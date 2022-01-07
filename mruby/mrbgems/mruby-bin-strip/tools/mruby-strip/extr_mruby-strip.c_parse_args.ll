; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-strip/tools/mruby-strip/extr_mruby-strip.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-strip/tools/mruby-strip/extr_mruby-strip.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip_args = type { i32, i32, i8**, i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"lvar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.strip_args*)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1, %struct.strip_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.strip_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.strip_args* %2, %struct.strip_args** %7, align 8
  %10 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %11 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %14 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %17 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %16, i32 0, i32 2
  store i8** %15, i8*** %17, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %20 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %73, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %21
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp uge i64 %32, 2
  br i1 %33, label %34, label %71

34:                                               ; preds = %25
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %71

44:                                               ; preds = %34
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %69 [
    i32 108, label %53
    i32 45, label %57
  ]

53:                                               ; preds = %44
  %54 = load i8*, i8** @TRUE, align 8
  %55 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %56 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  br label %70

57:                                               ; preds = %44
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** @TRUE, align 8
  %66 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %67 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %70

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %44, %68
  store i32 -1, i32* %4, align 4
  br label %81

70:                                               ; preds = %64, %53
  br label %72

71:                                               ; preds = %34, %25
  br label %76

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %21

76:                                               ; preds = %71, %21
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.strip_args*, %struct.strip_args** %7, align 8
  %79 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
