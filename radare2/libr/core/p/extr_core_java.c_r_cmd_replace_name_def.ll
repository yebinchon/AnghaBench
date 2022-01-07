; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_replace_name_def.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_replace_name_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"L%s;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64, i8*, i64, i64*)* @r_cmd_replace_name_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_cmd_replace_name_def(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64* %6, i64** %14, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 3, %25
  %27 = call i8* @malloc(i64 %26)
  br label %29

28:                                               ; preds = %21, %7
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i8* [ %27, %24 ], [ null, %28 ]
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 3, %37
  %39 = call i8* @malloc(i64 %38)
  br label %41

40:                                               ; preds = %33, %29
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ null, %40 ]
  store i8* %42, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %43 = load i64*, i64** %14, align 8
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load i8*, i8** %17, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i8*, i8** %16, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 3
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @snprintf(i8* %50, i64 %52, i8* %53, i8* %54)
  %56 = load i8*, i8** %17, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, 3
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @snprintf(i8* %56, i64 %58, i8* %59, i8* %60)
  %62 = load i8*, i8** %16, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %63, 2
  %65 = load i8*, i8** %17, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 2
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %14, align 8
  %71 = call i8* @r_cmd_replace_name(i8* %62, i64 %64, i8* %65, i64 %67, i8* %68, i64 %69, i64* %70)
  store i8* %71, i8** %18, align 8
  br label %72

72:                                               ; preds = %49, %46, %41
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %18, align 8
  ret i8* %77
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i8* @r_cmd_replace_name(i8*, i64, i8*, i64, i8*, i64, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
