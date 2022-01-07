; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_var_rename.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_var_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@VARPREFIX = common dso_local global i32 0, align 4
@ARGPREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*, i32)* @var_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @var_rename(i32* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %4
  br label %83

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17
  br label %83

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @VARPREFIX, align 4
  %31 = call i64 @r_str_startswith(i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @ARGPREFIX, align 4
  %38 = call i64 @r_str_startswith(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %33, %26
  %41 = phi i1 [ true, %26 ], [ %39, %33 ]
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 42
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %83

63:                                               ; preds = %54, %51
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.TYPE_6__* @r_anal_get_fcn_in(i32* %64, i32 %65, i32 0)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %10, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %83

70:                                               ; preds = %63
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @r_anal_var_rename(i32* %71, i32 %74, i32 1, i32 %77, i8* %80, i8* %81, i32 0)
  br label %83

83:                                               ; preds = %70, %69, %62, %25, %16
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @r_anal_get_fcn_in(i32*, i32, i32) #1

declare dso_local i32 @r_anal_var_rename(i32*, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
