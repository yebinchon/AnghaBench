; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc2.c_rc2_expandKey.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc2.c_rc2_expandKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_state = type { i32* }

@PITABLE = common dso_local global i32* null, align 8
@BITS = common dso_local global i32 0, align 4
@RC2_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc2_state*, i32*, i32)* @rc2_expandKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_expandKey(%struct.rc2_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc2_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rc2_state* %0, %struct.rc2_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 128
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %157

16:                                               ; preds = %12
  %17 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %18 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @memcpy(i32* %19, i32* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %57, %16
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i32*, i32** @PITABLE, align 8
  %29 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %30 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %39 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %37, %45
  %47 = and i32 %46, 255
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %28, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %52 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %27
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load i32, i32* @BITS, align 4
  %62 = add nsw i32 %61, 7
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 128, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** @PITABLE, align 8
  %67 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %68 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BITS, align 4
  %75 = sub nsw i32 0, %74
  %76 = and i32 7, %75
  %77 = ashr i32 255, %76
  %78 = and i32 %73, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %66, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %83 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %92, %60
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %8, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = load i32*, i32** @PITABLE, align 8
  %94 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %95 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %103 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %101, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %93, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %116 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  br label %88

121:                                              ; preds = %88
  %122 = load i32, i32* @RC2_KEY_SIZE, align 4
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %153, %121
  %125 = load i32, i32* %8, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %124
  %128 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %129 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = mul nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %137 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = mul nsw i32 %139, 2
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 8
  %146 = add nsw i32 %135, %145
  %147 = load %struct.rc2_state*, %struct.rc2_state** %5, align 8
  %148 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  br label %153

153:                                              ; preds = %127
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %8, align 4
  br label %124

156:                                              ; preds = %124
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %15
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
