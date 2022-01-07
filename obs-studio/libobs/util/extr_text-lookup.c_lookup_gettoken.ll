; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_gettoken.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_gettoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i8* }
%struct.strref = type { i64, i32 }
%struct.base_token = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }

@PARSE_WHITESPACE = common dso_local global i32 0, align 4
@BASETOKEN_WHITESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexer*, %struct.strref*)* @lookup_gettoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_gettoken(%struct.lexer* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca %struct.strref*, align 8
  %5 = alloca %struct.base_token, align 8
  %6 = alloca i8, align 1
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  store %struct.strref* %1, %struct.strref** %4, align 8
  %7 = call i32 @base_token_clear(%struct.base_token* %5)
  %8 = load %struct.strref*, %struct.strref** %4, align 8
  %9 = call i32 @strref_clear(%struct.strref* %8)
  br label %10

10:                                               ; preds = %113, %2
  %11 = load %struct.lexer*, %struct.lexer** %3, align 8
  %12 = load i32, i32* @PARSE_WHITESPACE, align 4
  %13 = call i64 @lexer_getbasetoken(%struct.lexer* %11, %struct.base_token* %5, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %114

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %6, align 1
  %20 = load %struct.strref*, %struct.strref** %4, align 8
  %21 = getelementptr inbounds %struct.strref, %struct.strref* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %75, label %24

24:                                               ; preds = %15
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = load %struct.lexer*, %struct.lexer** %3, align 8
  %41 = getelementptr inbounds %struct.lexer, %struct.lexer* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %41, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %6, align 1
  br label %29

45:                                               ; preds = %37
  br label %74

46:                                               ; preds = %24
  %47 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BASETOKEN_WHITESPACE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.strref*, %struct.strref** %4, align 8
  %53 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %54 = call i32 @strref_copy(%struct.strref* %52, %struct.TYPE_2__* %53)
  br label %114

55:                                               ; preds = %46
  %56 = load %struct.strref*, %struct.strref** %4, align 8
  %57 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %58 = call i32 @strref_copy(%struct.strref* %56, %struct.TYPE_2__* %57)
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.lexer*, %struct.lexer** %3, align 8
  %64 = load %struct.strref*, %struct.strref** %4, align 8
  %65 = call i32 @lookup_getstringtoken(%struct.lexer* %63, %struct.strref* %64)
  br label %114

66:                                               ; preds = %55
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 61
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %114

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %45
  br label %113

75:                                               ; preds = %15
  %76 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BASETOKEN_WHITESPACE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 61
  br i1 %86, label %87, label %96

87:                                               ; preds = %80, %75
  %88 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.lexer*, %struct.lexer** %3, align 8
  %92 = getelementptr inbounds %struct.lexer, %struct.lexer* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = sub i64 0, %90
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %92, align 8
  br label %114

96:                                               ; preds = %80
  %97 = load i8, i8* %6, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 35
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.lexer*, %struct.lexer** %3, align 8
  %102 = getelementptr inbounds %struct.lexer, %struct.lexer* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %104, i8** %102, align 8
  br label %114

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.strref*, %struct.strref** %4, align 8
  %110 = getelementptr inbounds %struct.strref, %struct.strref* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %105, %74
  br label %10

114:                                              ; preds = %100, %87, %70, %62, %51, %10
  %115 = load %struct.strref*, %struct.strref** %4, align 8
  %116 = getelementptr inbounds %struct.strref, %struct.strref* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  ret i32 %119
}

declare dso_local i32 @base_token_clear(%struct.base_token*) #1

declare dso_local i32 @strref_clear(%struct.strref*) #1

declare dso_local i64 @lexer_getbasetoken(%struct.lexer*, %struct.base_token*, i32) #1

declare dso_local i32 @strref_copy(%struct.strref*, %struct.TYPE_2__*) #1

declare dso_local i32 @lookup_getstringtoken(%struct.lexer*, %struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
