; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_exp2reg.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_exp2reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@VJMP = common dso_local global i64 0, align 8
@NO_JUMP = common dso_local global i8* null, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32)* @exp2reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp2reg(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @discharge2reg(i32* %11, %struct.TYPE_9__* %12, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VJMP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @luaK_concat(i32* %21, i8** %23, i32 %28)
  br label %30

30:                                               ; preds = %20, %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = call i64 @hasjumps(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %30
  %35 = load i8*, i8** @NO_JUMP, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** @NO_JUMP, align 8
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @need_value(i32* %39, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %34
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @need_value(i32* %46, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %45, %34
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VJMP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** @NO_JUMP, align 8
  br label %63

60:                                               ; preds = %52
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @luaK_jump(i32* %61)
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i8* [ %59, %58 ], [ %62, %60 ]
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @code_label(i32* %66, i32 %67, i32 0, i32 1)
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @code_label(i32* %69, i32 %70, i32 1, i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @luaK_patchtohere(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %63, %45
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @luaK_getlabel(i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @patchlistaux(i32* %78, i8* %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @patchlistaux(i32* %86, i8* %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %75, %30
  %95 = load i8*, i8** @NO_JUMP, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load i64, i64* @VNONRELOC, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  ret void
}

declare dso_local i32 @discharge2reg(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @luaK_concat(i32*, i8**, i32) #1

declare dso_local i64 @hasjumps(%struct.TYPE_9__*) #1

declare dso_local i64 @need_value(i32*, i8*) #1

declare dso_local i8* @luaK_jump(i32*) #1

declare dso_local i32 @code_label(i32*, i32, i32, i32) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

declare dso_local i32 @luaK_getlabel(i32*) #1

declare dso_local i32 @patchlistaux(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
