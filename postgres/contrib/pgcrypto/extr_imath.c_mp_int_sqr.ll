; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_sqr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@default_precision = common dso_local global i32 0, align 4
@MP_MEMORY = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_sqr(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @MP_USED(%struct.TYPE_8__* %18)
  %20 = add nsw i32 %19, 1
  %21 = sdiv i32 %20, 2
  %22 = mul nsw i32 4, %21
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = icmp eq %struct.TYPE_8__* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @s_round_prec(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @default_precision, align 4
  %31 = call i32 @MAX(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @s_alloc(i32 %32)
  store i32* %33, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @MP_MEMORY, align 4
  store i32 %36, i32* %3, align 4
  br label %90

37:                                               ; preds = %26
  br label %48

38:                                               ; preds = %14
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @s_pad(%struct.TYPE_8__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @MP_MEMORY, align 4
  store i32 %44, i32* %3, align 4
  br label %90

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = call i32* @MP_DIGITS(%struct.TYPE_8__* %46)
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %45, %37
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ZERO(i32* %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = call i32* @MP_DIGITS(%struct.TYPE_8__* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @MP_USED(%struct.TYPE_8__* %55)
  %57 = call i32 @s_ksqr(i32* %53, i32* %54, i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = call i32* @MP_DIGITS(%struct.TYPE_8__* %59)
  %61 = icmp ne i32* %58, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %48
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = call i32* @MP_DIGITS(%struct.TYPE_8__* %63)
  %65 = bitcast i32* %64 to i8*
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = bitcast %struct.TYPE_8__* %66 to i8*
  %68 = icmp ne i8* %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = call i32* @MP_DIGITS(%struct.TYPE_8__* %70)
  %72 = call i32 @s_free(i32* %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %48
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = call i32 @CLAMP(%struct.TYPE_8__* %84)
  %86 = load i32, i32* @MP_ZPOS, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @MP_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %80, %43, %35
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_USED(%struct.TYPE_8__*) #1

declare dso_local i32 @s_round_prec(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32* @s_alloc(i32) #1

declare dso_local i32 @s_pad(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @MP_DIGITS(%struct.TYPE_8__*) #1

declare dso_local i32 @ZERO(i32*, i32) #1

declare dso_local i32 @s_ksqr(i32*, i32*, i32) #1

declare dso_local i32 @s_free(i32*) #1

declare dso_local i32 @CLAMP(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
