; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_mrb_debug_get_source.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_mrb_debug_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mrb_debug_get_source(i32* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %13, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %13, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %13, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mrb_debug_get_filename(i32* %27, i32 %32, i32 0)
  %34 = call i8* @dirname(i32* %26, i32 %33)
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %36, align 16
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %68, %23
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %68

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i8* @build_path(i32* %48, i8* %52, i8* %53)
  store i8* %54, i8** %12, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %68

57:                                               ; preds = %47
  %58 = load i8*, i8** %12, align 8
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %59, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @mrb_free(i32* %62, i8* %63)
  store i8* null, i8** %12, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @fclose(i32* %66)
  br label %71

68:                                               ; preds = %61, %56, %46
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %37

71:                                               ; preds = %65, %37
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @mrb_free(i32* %72, i8* %74)
  %76 = load i8*, i8** %12, align 8
  ret i8* %76
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @dirname(i32*, i32) #1

declare dso_local i32 @mrb_debug_get_filename(i32*, i32, i32) #1

declare dso_local i8* @build_path(i32*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @mrb_free(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
