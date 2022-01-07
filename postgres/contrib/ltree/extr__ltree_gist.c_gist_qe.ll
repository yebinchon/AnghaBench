; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr__ltree_gist.c_gist_qe.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr__ltree_gist.c_gist_qe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*)* @gist_qe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gist_qe(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = call %struct.TYPE_15__* @LQUERY_FIRST(%struct.TYPE_16__* %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @LTG_SIGN(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @LTG_ISALLTRUE(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = call i64 @LQL_CANLOOKSIGN(%struct.TYPE_15__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call %struct.TYPE_14__* @LQL_FIRST(%struct.TYPE_15__* %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %11, align 8
  br label %42

42:                                               ; preds = %54, %36
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AHASHVAL(i32 %49)
  %51 = call i64 @GETBIT(i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %56 = call %struct.TYPE_14__* @LVAR_NEXT(%struct.TYPE_14__* %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  br label %42

59:                                               ; preds = %53, %42
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %70

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %32, %27
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = call %struct.TYPE_15__* @LQL_NEXT(%struct.TYPE_15__* %65)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %8, align 4
  br label %24

69:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %62, %22
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_15__* @LQUERY_FIRST(%struct.TYPE_16__*) #1

declare dso_local i32 @LTG_SIGN(i32*) #1

declare dso_local i64 @LTG_ISALLTRUE(i32*) #1

declare dso_local i64 @LQL_CANLOOKSIGN(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @LQL_FIRST(%struct.TYPE_15__*) #1

declare dso_local i64 @GETBIT(i32, i32) #1

declare dso_local i32 @AHASHVAL(i32) #1

declare dso_local %struct.TYPE_14__* @LVAR_NEXT(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @LQL_NEXT(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
