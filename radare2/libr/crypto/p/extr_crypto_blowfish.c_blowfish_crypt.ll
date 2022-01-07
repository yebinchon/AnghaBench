; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_blowfish.c_blowfish_crypt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_blowfish.c_blowfish_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blowfish_state = type { i32* }

@.str = private unnamed_addr constant [66 x i8] c"Invalid input length %d. Expected length is multiple of 8 bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blowfish_state*, i32*, i32*, i32)* @blowfish_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blowfish_crypt(%struct.blowfish_state* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.blowfish_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.blowfish_state* %0, %struct.blowfish_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blowfish_state*, %struct.blowfish_state** %5, align 8
  %14 = icmp ne %struct.blowfish_state* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %25, 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %21, %18, %15, %4
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @eprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  br label %197

36:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %194, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %197

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 0
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 24
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %48, %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %56, %63
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %64, %70
  store i32 %71, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 24
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 5
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %78, %85
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 6
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %86, %93
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 7
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %94, %100
  store i32 %101, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %121, %41
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load %struct.blowfish_state*, %struct.blowfish_state** %5, align 8
  %107 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load %struct.blowfish_state*, %struct.blowfish_state** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @F(%struct.blowfish_state* %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = xor i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = call i32 @swap(i32* %9, i32* %10)
  br label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %102

124:                                              ; preds = %102
  %125 = call i32 @swap(i32* %9, i32* %10)
  %126 = load %struct.blowfish_state*, %struct.blowfish_state** %5, align 8
  %127 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 16
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = xor i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load %struct.blowfish_state*, %struct.blowfish_state** %5, align 8
  %134 = getelementptr inbounds %struct.blowfish_state, %struct.blowfish_state* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 17
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %9, align 4
  %139 = xor i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = ashr i32 %140, 24
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 0
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* %9, align 4
  %148 = ashr i32 %147, 16
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* %9, align 4
  %155 = ashr i32 %154, 8
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 3
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* %10, align 4
  %168 = ashr i32 %167, 24
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load i32, i32* %10, align 4
  %175 = ashr i32 %174, 16
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 5
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %10, align 4
  %182 = ashr i32 %181, 8
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 6
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 7
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  br label %194

194:                                              ; preds = %124
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 8
  store i32 %196, i32* %11, align 4
  br label %37

197:                                              ; preds = %35, %37
  ret void
}

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i32 @F(%struct.blowfish_state*, i32) #1

declare dso_local i32 @swap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
