; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltable.c_resize.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ltable.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32* }

@dummynode = common dso_local global i64 0, align 8
@TValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i32)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @setarrayvector(i32* %18, %struct.TYPE_6__* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @dummynode, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @resize_hashpart(i32* %32, %struct.TYPE_6__* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %73, %40
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @ttisnil(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @luaH_setnum(i32* %60, %struct.TYPE_6__* %61, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @setobjt2t(i32* %59, i32 %64, i32* %70)
  br label %72

72:                                               ; preds = %58, %49
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %45

76:                                               ; preds = %45
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @TValue, align 4
  %84 = call i32 @luaM_reallocvector(i32* %77, i32* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %36
  ret void
}

declare dso_local i32 @setarrayvector(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @resize_hashpart(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32 @setobjt2t(i32*, i32, i32*) #1

declare dso_local i32 @luaH_setnum(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaM_reallocvector(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
