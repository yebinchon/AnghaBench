; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_out.c_GIFEncode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_out.c_GIFEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"GIF87a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"GIF89a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32)* @GIFEncode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GIFEncode(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 %10, i32* %22, align 4
  %33 = call i32 @memset(%struct.TYPE_4__* %32, i32 0, i32 48)
  %34 = load i32, i32* %15, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %18, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %29, align 4
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  store i32 %39, i32* %24, align 4
  %41 = load i32, i32* %14, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  store i32 %41, i32* %25, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %28, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %46, %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %18, align 4
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %11
  store i32 2, i32* %30, align 4
  br label %58

56:                                               ; preds = %11
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %30, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @gdPutBuf(i8* %64, i32 6, i32 %65)
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @gifPutWord(i32 %67, i32 %68)
  %70 = load i32, i32* %25, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @gifPutWord(i32 %70, i32 %71)
  store i32 128, i32* %23, align 4
  %73 = load i32, i32* %28, align 4
  %74 = sub nsw i32 %73, 1
  %75 = shl i32 %74, 5
  %76 = load i32, i32* %23, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %23, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %23, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @gdPutC(i8 signext %83, i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @gdPutC(i8 signext %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @gdPutC(i8 signext 0, i32 %90)
  store i32 0, i32* %31, align 4
  br label %92

92:                                               ; preds = %121, %58
  %93 = load i32, i32* %31, align 4
  %94 = load i32, i32* %29, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %31, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @gdPutC(i8 signext %102, i32 %103)
  %105 = load i32*, i32** %20, align 8
  %106 = load i32, i32* %31, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @gdPutC(i8 signext %110, i32 %111)
  %113 = load i32*, i32** %21, align 8
  %114 = load i32, i32* %31, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = trunc i32 %117 to i8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @gdPutC(i8 signext %118, i32 %119)
  br label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %31, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %31, align 4
  br label %92

124:                                              ; preds = %92
  %125 = load i32, i32* %17, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @gdPutC(i8 signext 33, i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @gdPutC(i8 signext -7, i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @gdPutC(i8 signext 4, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @gdPutC(i8 signext 1, i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @gdPutC(i8 signext 0, i32 %136)
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @gdPutC(i8 signext 0, i32 %138)
  %140 = load i32, i32* %17, align 4
  %141 = trunc i32 %140 to i8
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @gdPutC(i8 signext %141, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @gdPutC(i8 signext 0, i32 %144)
  br label %146

146:                                              ; preds = %127, %124
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @gdPutC(i8 signext 44, i32 %147)
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @gifPutWord(i32 %149, i32 %150)
  %152 = load i32, i32* %27, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @gifPutWord(i32 %152, i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @gifPutWord(i32 %156, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @gifPutWord(i32 %160, i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %146
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @gdPutC(i8 signext 64, i32 %167)
  br label %172

169:                                              ; preds = %146
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @gdPutC(i8 signext 0, i32 %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32, i32* %30, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @gdPutC(i8 signext %174, i32 %175)
  %177 = load i32, i32* %30, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %22, align 4
  %181 = call i32 @compress(i32 %178, i32 %179, i32 %180, %struct.TYPE_4__* %32)
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @gdPutC(i8 signext 0, i32 %182)
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @gdPutC(i8 signext 59, i32 %184)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @gdPutBuf(i8*, i32, i32) #1

declare dso_local i32 @gifPutWord(i32, i32) #1

declare dso_local i32 @gdPutC(i8 signext, i32) #1

declare dso_local i32 @compress(i32, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
