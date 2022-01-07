; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_vex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_vex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"reserved vex.m-mmmm value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @decode_vex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_vex(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  %6 = load %struct.ud*, %struct.ud** %2, align 8
  %7 = getelementptr inbounds %struct.ud, %struct.ud* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 64
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ud*, %struct.ud** %2, align 8
  %12 = call i32 @inp_peek(%struct.ud* %11)
  %13 = call i32 @MODRM_MOD(i32 %12)
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %10, %1
  %17 = load %struct.ud*, %struct.ud** %2, align 8
  %18 = call i32 @inp_curr(%struct.ud* %17)
  %19 = load %struct.ud*, %struct.ud** %2, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ud*, %struct.ud** %2, align 8
  %22 = call i8* @inp_next(%struct.ud* %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.ud*, %struct.ud** %2, align 8
  %25 = getelementptr inbounds %struct.ud, %struct.ud* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ud*, %struct.ud** %2, align 8
  %27 = getelementptr inbounds %struct.ud, %struct.ud* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 196
  br i1 %29, label %30, label %59

30:                                               ; preds = %16
  %31 = load %struct.ud*, %struct.ud** %2, align 8
  %32 = call i8* @inp_next(%struct.ud* %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.ud*, %struct.ud** %2, align 8
  %35 = getelementptr inbounds %struct.ud, %struct.ud* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ud*, %struct.ud** %2, align 8
  %37 = call i32 @UD_RETURN_ON_ERROR(%struct.ud* %36)
  %38 = load %struct.ud*, %struct.ud** %2, align 8
  %39 = getelementptr inbounds %struct.ud, %struct.ud* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 31
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %30
  %48 = load %struct.ud*, %struct.ud** %2, align 8
  %49 = call i32 @UD_RETURN_WITH_ERROR(%struct.ud* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.ud*, %struct.ud** %2, align 8
  %52 = getelementptr inbounds %struct.ud, %struct.ud* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 3
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 2
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %16
  %60 = load %struct.ud*, %struct.ud** %2, align 8
  %61 = getelementptr inbounds %struct.ud, %struct.ud* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 197
  %64 = zext i1 %63 to i32
  %65 = call i32 @UD_ASSERT(i32 %64)
  %66 = load %struct.ud*, %struct.ud** %2, align 8
  %67 = getelementptr inbounds %struct.ud, %struct.ud* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 3
  %70 = shl i32 %69, 2
  %71 = or i32 1, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %59, %50
  br label %73

73:                                               ; preds = %72, %15
  %74 = load %struct.ud*, %struct.ud** %2, align 8
  %75 = load %struct.ud*, %struct.ud** %2, align 8
  %76 = getelementptr inbounds %struct.ud, %struct.ud* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @decode_ext(%struct.ud* %74, i32 %83)
  ret i32 %84
}

declare dso_local i32 @MODRM_MOD(i32) #1

declare dso_local i32 @inp_peek(%struct.ud*) #1

declare dso_local i32 @inp_curr(%struct.ud*) #1

declare dso_local i8* @inp_next(%struct.ud*) #1

declare dso_local i32 @UD_RETURN_ON_ERROR(%struct.ud*) #1

declare dso_local i32 @UD_RETURN_WITH_ERROR(%struct.ud*, i8*) #1

declare dso_local i32 @UD_ASSERT(i32) #1

declare dso_local i32 @decode_ext(%struct.ud*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
