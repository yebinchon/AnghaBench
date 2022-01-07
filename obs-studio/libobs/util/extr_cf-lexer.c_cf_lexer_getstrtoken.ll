; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_getstrtoken.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_getstrtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { %struct.TYPE_5__, i64* }
%struct.TYPE_5__ = type { i8* }
%struct.cf_token = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@CFTOKEN_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_lexer*, %struct.cf_token*, i8, i32)* @cf_lexer_getstrtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_lexer_getstrtoken(%struct.cf_lexer* %0, %struct.cf_token* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.cf_lexer*, align 8
  %6 = alloca %struct.cf_token*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cf_lexer* %0, %struct.cf_lexer** %5, align 8
  store %struct.cf_token* %1, %struct.cf_token** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %11 = load %struct.cf_lexer*, %struct.cf_lexer** %5, align 8
  %12 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %16 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %21 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.cf_lexer*, %struct.cf_lexer** %5, align 8
  %26 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %27 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %26, i32 0, i32 1
  %28 = call i32 @cf_lexer_write_strref(%struct.cf_lexer* %25, %struct.TYPE_6__* %27)
  br label %29

29:                                               ; preds = %87, %4
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = call i32 @cf_pass_any_splices(i8** %9)
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i64
  %48 = load %struct.cf_lexer*, %struct.cf_lexer** %5, align 8
  %49 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %49, align 8
  store i64 %47, i64* %50, align 8
  %52 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %53 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %92

59:                                               ; preds = %41
  br label %67

60:                                               ; preds = %33
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @is_newline(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %92

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i64
  %71 = load %struct.cf_lexer*, %struct.cf_lexer** %5, align 8
  %72 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %72, align 8
  store i64 %70, i64* %73, align 8
  %75 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %76 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %67
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 92
  br label %87

87:                                               ; preds = %82, %67
  %88 = phi i1 [ false, %67 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %29

92:                                               ; preds = %65, %44, %29
  %93 = load %struct.cf_lexer*, %struct.cf_lexer** %5, align 8
  %94 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  store i64 0, i64* %95, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %98 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %96 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %105 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %103
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* @CFTOKEN_STRING, align 4
  %110 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  %111 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load %struct.cf_lexer*, %struct.cf_lexer** %5, align 8
  %114 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  ret void
}

declare dso_local i32 @cf_lexer_write_strref(%struct.cf_lexer*, %struct.TYPE_6__*) #1

declare dso_local i32 @cf_pass_any_splices(i8**) #1

declare dso_local i64 @is_newline(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
