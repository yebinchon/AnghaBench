; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_resolve_mode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_resolve_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"instruction invalid in 64bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @resolve_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_mode(%struct.ud* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ud*, align 8
  %4 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %3, align 8
  %5 = load %struct.ud*, %struct.ud** %3, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %170

10:                                               ; preds = %1
  %11 = load %struct.ud*, %struct.ud** %3, align 8
  %12 = getelementptr inbounds %struct.ud, %struct.ud* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %123

15:                                               ; preds = %10
  %16 = load %struct.ud*, %struct.ud** %3, align 8
  %17 = getelementptr inbounds %struct.ud, %struct.ud* %16, i32 0, i32 10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @P_INV64(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.ud*, %struct.ud** %3, align 8
  %25 = call i32 @UDERR(%struct.ud* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %170

26:                                               ; preds = %15
  %27 = load %struct.ud*, %struct.ud** %3, align 8
  %28 = getelementptr inbounds %struct.ud, %struct.ud* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 196
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.ud*, %struct.ud** %3, align 8
  %33 = getelementptr inbounds %struct.ud, %struct.ud* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 5
  %36 = xor i32 %35, -1
  %37 = and i32 %36, 7
  %38 = load %struct.ud*, %struct.ud** %3, align 8
  %39 = getelementptr inbounds %struct.ud, %struct.ud* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 8
  %43 = or i32 %37, %42
  %44 = load %struct.ud*, %struct.ud** %3, align 8
  %45 = getelementptr inbounds %struct.ud, %struct.ud* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %73

46:                                               ; preds = %26
  %47 = load %struct.ud*, %struct.ud** %3, align 8
  %48 = getelementptr inbounds %struct.ud, %struct.ud* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 197
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.ud*, %struct.ud** %3, align 8
  %53 = getelementptr inbounds %struct.ud, %struct.ud* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 5
  %56 = xor i32 %55, -1
  %57 = and i32 %56, 4
  %58 = load %struct.ud*, %struct.ud** %3, align 8
  %59 = getelementptr inbounds %struct.ud, %struct.ud* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %72

60:                                               ; preds = %46
  %61 = load %struct.ud*, %struct.ud** %3, align 8
  %62 = getelementptr inbounds %struct.ud, %struct.ud* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @UD_ASSERT(i32 %65)
  %67 = load %struct.ud*, %struct.ud** %3, align 8
  %68 = getelementptr inbounds %struct.ud, %struct.ud* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ud*, %struct.ud** %3, align 8
  %71 = getelementptr inbounds %struct.ud, %struct.ud* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %60, %51
  br label %73

73:                                               ; preds = %72, %31
  %74 = load %struct.ud*, %struct.ud** %3, align 8
  %75 = getelementptr inbounds %struct.ud, %struct.ud* %74, i32 0, i32 10
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REX_PFX_MASK(i32 %78)
  %80 = load %struct.ud*, %struct.ud** %3, align 8
  %81 = getelementptr inbounds %struct.ud, %struct.ud* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.ud*, %struct.ud** %3, align 8
  %85 = getelementptr inbounds %struct.ud, %struct.ud* %84, i32 0, i32 10
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @P_DEF64(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.ud*, %struct.ud** %3, align 8
  %91 = getelementptr inbounds %struct.ud, %struct.ud* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @REX_W(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %73
  %96 = load %struct.ud*, %struct.ud** %3, align 8
  %97 = getelementptr inbounds %struct.ud, %struct.ud* %96, i32 0, i32 6
  store i32 64, i32* %97, align 8
  br label %114

98:                                               ; preds = %73
  %99 = load %struct.ud*, %struct.ud** %3, align 8
  %100 = getelementptr inbounds %struct.ud, %struct.ud* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.ud*, %struct.ud** %3, align 8
  %105 = getelementptr inbounds %struct.ud, %struct.ud* %104, i32 0, i32 6
  store i32 16, i32* %105, align 8
  br label %113

106:                                              ; preds = %98
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 64, i32 32
  %111 = load %struct.ud*, %struct.ud** %3, align 8
  %112 = getelementptr inbounds %struct.ud, %struct.ud* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %106, %103
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.ud*, %struct.ud** %3, align 8
  %116 = getelementptr inbounds %struct.ud, %struct.ud* %115, i32 0, i32 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 32, i32 64
  %121 = load %struct.ud*, %struct.ud** %3, align 8
  %122 = getelementptr inbounds %struct.ud, %struct.ud* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 4
  br label %169

123:                                              ; preds = %10
  %124 = load %struct.ud*, %struct.ud** %3, align 8
  %125 = getelementptr inbounds %struct.ud, %struct.ud* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load %struct.ud*, %struct.ud** %3, align 8
  %130 = getelementptr inbounds %struct.ud, %struct.ud* %129, i32 0, i32 9
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 16, i32 32
  %135 = load %struct.ud*, %struct.ud** %3, align 8
  %136 = getelementptr inbounds %struct.ud, %struct.ud* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ud*, %struct.ud** %3, align 8
  %138 = getelementptr inbounds %struct.ud, %struct.ud* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 16, i32 32
  %143 = load %struct.ud*, %struct.ud** %3, align 8
  %144 = getelementptr inbounds %struct.ud, %struct.ud* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  br label %168

145:                                              ; preds = %123
  %146 = load %struct.ud*, %struct.ud** %3, align 8
  %147 = getelementptr inbounds %struct.ud, %struct.ud* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %167

150:                                              ; preds = %145
  %151 = load %struct.ud*, %struct.ud** %3, align 8
  %152 = getelementptr inbounds %struct.ud, %struct.ud* %151, i32 0, i32 9
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 32, i32 16
  %157 = load %struct.ud*, %struct.ud** %3, align 8
  %158 = getelementptr inbounds %struct.ud, %struct.ud* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ud*, %struct.ud** %3, align 8
  %160 = getelementptr inbounds %struct.ud, %struct.ud* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 32, i32 16
  %165 = load %struct.ud*, %struct.ud** %3, align 8
  %166 = getelementptr inbounds %struct.ud, %struct.ud* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %150, %145
  br label %168

168:                                              ; preds = %167, %128
  br label %169

169:                                              ; preds = %168, %114
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %23, %9
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i64 @P_INV64(i32) #1

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

declare dso_local i32 @UD_ASSERT(i32) #1

declare dso_local i32 @REX_PFX_MASK(i32) #1

declare dso_local i32 @P_DEF64(i32) #1

declare dso_local i64 @REX_W(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
