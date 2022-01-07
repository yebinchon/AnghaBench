; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_resolve_mnemonic.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_resolve_mnemonic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.ud = type { i64, i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64* }

@UD_I3dnow = common dso_local global i64 0, align 8
@ud_itab = common dso_local global %struct.TYPE_6__* null, align 8
@UD_Iswapgs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"swapgs invalid in 64bits mode\0A\00", align 1
@UD_Ixchg = common dso_local global i64 0, align 8
@UD_OP_REG = common dso_local global i64 0, align 8
@UD_R_AX = common dso_local global i64 0, align 8
@UD_R_EAX = common dso_local global i64 0, align 8
@UD_NONE = common dso_local global i8* null, align 8
@UD_Inop = common dso_local global i64 0, align 8
@UD_Ipause = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @resolve_mnemonic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_mnemonic(%struct.ud* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ud*, align 8
  store %struct.ud* %0, %struct.ud** %3, align 8
  %4 = load %struct.ud*, %struct.ud** %3, align 8
  %5 = getelementptr inbounds %struct.ud, %struct.ud* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UD_I3dnow, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ud_itab, align 8
  %11 = load %struct.ud*, %struct.ud** %3, align 8
  %12 = getelementptr inbounds %struct.ud, %struct.ud* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.ud*, %struct.ud** %3, align 8
  %17 = call i64 @inp_curr(%struct.ud* %16)
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ud*, %struct.ud** %3, align 8
  %24 = getelementptr inbounds %struct.ud, %struct.ud* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %9, %1
  %26 = load %struct.ud*, %struct.ud** %3, align 8
  %27 = getelementptr inbounds %struct.ud, %struct.ud* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UD_Iswapgs, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.ud*, %struct.ud** %3, align 8
  %33 = getelementptr inbounds %struct.ud, %struct.ud* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 64
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.ud*, %struct.ud** %3, align 8
  %38 = call i32 @UDERR(%struct.ud* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %154

39:                                               ; preds = %31, %25
  %40 = load %struct.ud*, %struct.ud** %3, align 8
  %41 = getelementptr inbounds %struct.ud, %struct.ud* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UD_Ixchg, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %136

45:                                               ; preds = %39
  %46 = load %struct.ud*, %struct.ud** %3, align 8
  %47 = getelementptr inbounds %struct.ud, %struct.ud* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UD_OP_REG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %45
  %55 = load %struct.ud*, %struct.ud** %3, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UD_R_AX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %54
  %64 = load %struct.ud*, %struct.ud** %3, align 8
  %65 = getelementptr inbounds %struct.ud, %struct.ud* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UD_OP_REG, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load %struct.ud*, %struct.ud** %3, align 8
  %74 = getelementptr inbounds %struct.ud, %struct.ud* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UD_R_AX, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %117, label %81

81:                                               ; preds = %72, %63, %54, %45
  %82 = load %struct.ud*, %struct.ud** %3, align 8
  %83 = getelementptr inbounds %struct.ud, %struct.ud* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UD_OP_REG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %81
  %91 = load %struct.ud*, %struct.ud** %3, align 8
  %92 = getelementptr inbounds %struct.ud, %struct.ud* %91, i32 0, i32 3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @UD_R_EAX, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %90
  %100 = load %struct.ud*, %struct.ud** %3, align 8
  %101 = getelementptr inbounds %struct.ud, %struct.ud* %100, i32 0, i32 3
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @UD_OP_REG, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %99
  %109 = load %struct.ud*, %struct.ud** %3, align 8
  %110 = getelementptr inbounds %struct.ud, %struct.ud* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @UD_R_EAX, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %108, %72
  %118 = load i8*, i8** @UD_NONE, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.ud*, %struct.ud** %3, align 8
  %121 = getelementptr inbounds %struct.ud, %struct.ud* %120, i32 0, i32 3
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i64 %119, i64* %124, align 8
  %125 = load i8*, i8** @UD_NONE, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.ud*, %struct.ud** %3, align 8
  %128 = getelementptr inbounds %struct.ud, %struct.ud* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i64 %126, i64* %131, align 8
  %132 = load i64, i64* @UD_Inop, align 8
  %133 = load %struct.ud*, %struct.ud** %3, align 8
  %134 = getelementptr inbounds %struct.ud, %struct.ud* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %117, %108, %99, %90, %81
  br label %136

136:                                              ; preds = %135, %39
  %137 = load %struct.ud*, %struct.ud** %3, align 8
  %138 = getelementptr inbounds %struct.ud, %struct.ud* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UD_Inop, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %136
  %143 = load %struct.ud*, %struct.ud** %3, align 8
  %144 = getelementptr inbounds %struct.ud, %struct.ud* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.ud*, %struct.ud** %3, align 8
  %149 = getelementptr inbounds %struct.ud, %struct.ud* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load i64, i64* @UD_Ipause, align 8
  %151 = load %struct.ud*, %struct.ud** %3, align 8
  %152 = getelementptr inbounds %struct.ud, %struct.ud* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %147, %142, %136
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %36
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @inp_curr(%struct.ud*) #1

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
