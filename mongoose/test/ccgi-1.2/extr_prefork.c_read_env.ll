; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_read_env.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_prefork.c_read_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** ()* @read_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @read_env() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %14, %0
  %9 = load i32, i32* @stdin, align 4
  %10 = call signext i8 @getc(i32 %9)
  %11 = sext i8 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = call i64 @isdigit(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 10
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 48
  store i32 %19, i32* %7, align 4
  br label %8

20:                                               ; preds = %8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 58
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  store i8** null, i8*** %1, align 8
  br label %117

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %3, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @stdin, align 4
  %34 = call i32 @fread(i8* %31, i32 1, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @stdin, align 4
  %39 = call signext i8 @getc(i32 %38)
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 44
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %27
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @free(i8* %43)
  store i8** null, i8*** %1, align 8
  br label %117

45:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 61, i8* %67, align 1
  br label %68

68:                                               ; preds = %63, %58, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to i8**
  store i8** %81, i8*** %2, align 8
  %82 = load i8*, i8** %3, align 8
  store i8* %82, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %108, %72
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %87
  %96 = load i8*, i8** %4, align 8
  %97 = load i8**, i8*** %2, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  store i8* %96, i8** %101, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %4, align 8
  br label %107

107:                                              ; preds = %95, %87
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i8**, i8*** %2, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  store i8* null, i8** %115, align 8
  %116 = load i8**, i8*** %2, align 8
  store i8** %116, i8*** %1, align 8
  br label %117

117:                                              ; preds = %111, %42, %26
  %118 = load i8**, i8*** %1, align 8
  ret i8** %118
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local signext i8 @getc(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
