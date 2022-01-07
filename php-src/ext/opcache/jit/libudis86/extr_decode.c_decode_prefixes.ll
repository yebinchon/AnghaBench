; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_prefixes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_prefixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@MAX_INSN_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"max instruction length\00", align 1
@UD_R_CS = common dso_local global i32 0, align 4
@UD_R_SS = common dso_local global i32 0, align 4
@UD_R_DS = common dso_local global i32 0, align 4
@UD_R_ES = common dso_local global i32 0, align 4
@UD_R_FS = common dso_local global i32 0, align 4
@UD_R_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @decode_prefixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_prefixes(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ud*, %struct.ud** %2, align 8
  %7 = call i32 @UD_RETURN_ON_ERROR(%struct.ud* %6)
  br label %8

8:                                                ; preds = %77, %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ud*, %struct.ud** %2, align 8
  %11 = call i32 @inp_next(%struct.ud* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ud*, %struct.ud** %2, align 8
  %13 = call i32 @UD_RETURN_ON_ERROR(%struct.ud* %12)
  %14 = load %struct.ud*, %struct.ud** %2, align 8
  %15 = getelementptr inbounds %struct.ud, %struct.ud* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_INSN_LENGTH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %8
  %20 = load %struct.ud*, %struct.ud** %2, align 8
  %21 = call i32 @UD_RETURN_WITH_ERROR(%struct.ud* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %8
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %63 [
    i32 46, label %24
    i32 54, label %28
    i32 62, label %32
    i32 38, label %36
    i32 100, label %40
    i32 101, label %44
    i32 103, label %48
    i32 240, label %51
    i32 102, label %54
    i32 242, label %57
    i32 243, label %60
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @UD_R_CS, align 4
  %26 = load %struct.ud*, %struct.ud** %2, align 8
  %27 = getelementptr inbounds %struct.ud, %struct.ud* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  br label %76

28:                                               ; preds = %22
  %29 = load i32, i32* @UD_R_SS, align 4
  %30 = load %struct.ud*, %struct.ud** %2, align 8
  %31 = getelementptr inbounds %struct.ud, %struct.ud* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  br label %76

32:                                               ; preds = %22
  %33 = load i32, i32* @UD_R_DS, align 4
  %34 = load %struct.ud*, %struct.ud** %2, align 8
  %35 = getelementptr inbounds %struct.ud, %struct.ud* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  br label %76

36:                                               ; preds = %22
  %37 = load i32, i32* @UD_R_ES, align 4
  %38 = load %struct.ud*, %struct.ud** %2, align 8
  %39 = getelementptr inbounds %struct.ud, %struct.ud* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  br label %76

40:                                               ; preds = %22
  %41 = load i32, i32* @UD_R_FS, align 4
  %42 = load %struct.ud*, %struct.ud** %2, align 8
  %43 = getelementptr inbounds %struct.ud, %struct.ud* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  br label %76

44:                                               ; preds = %22
  %45 = load i32, i32* @UD_R_GS, align 4
  %46 = load %struct.ud*, %struct.ud** %2, align 8
  %47 = getelementptr inbounds %struct.ud, %struct.ud* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  br label %76

48:                                               ; preds = %22
  %49 = load %struct.ud*, %struct.ud** %2, align 8
  %50 = getelementptr inbounds %struct.ud, %struct.ud* %49, i32 0, i32 1
  store i32 103, i32* %50, align 8
  br label %76

51:                                               ; preds = %22
  %52 = load %struct.ud*, %struct.ud** %2, align 8
  %53 = getelementptr inbounds %struct.ud, %struct.ud* %52, i32 0, i32 2
  store i32 240, i32* %53, align 4
  br label %76

54:                                               ; preds = %22
  %55 = load %struct.ud*, %struct.ud** %2, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 3
  store i32 102, i32* %56, align 8
  br label %76

57:                                               ; preds = %22
  %58 = load %struct.ud*, %struct.ud** %2, align 8
  %59 = getelementptr inbounds %struct.ud, %struct.ud* %58, i32 0, i32 4
  store i32 242, i32* %59, align 4
  br label %76

60:                                               ; preds = %22
  %61 = load %struct.ud*, %struct.ud** %2, align 8
  %62 = getelementptr inbounds %struct.ud, %struct.ud* %61, i32 0, i32 4
  store i32 243, i32* %62, align 4
  br label %76

63:                                               ; preds = %22
  %64 = load %struct.ud*, %struct.ud** %2, align 8
  %65 = getelementptr inbounds %struct.ud, %struct.ud* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 240
  %71 = icmp eq i32 %70, 64
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ false, %63 ], [ %71, %68 ]
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 1
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %60, %57, %54, %51, %48, %44, %40, %36, %32, %28, %24
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %8, label %81

81:                                               ; preds = %77
  %82 = load %struct.ud*, %struct.ud** %2, align 8
  %83 = getelementptr inbounds %struct.ud, %struct.ud* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 240
  %89 = icmp eq i32 %88, 64
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.ud*, %struct.ud** %2, align 8
  %93 = getelementptr inbounds %struct.ud, %struct.ud* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86, %81
  ret i32 0
}

declare dso_local i32 @UD_RETURN_ON_ERROR(%struct.ud*) #1

declare dso_local i32 @inp_next(%struct.ud*) #1

declare dso_local i32 @UD_RETURN_WITH_ERROR(%struct.ud*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
