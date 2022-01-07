; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_jsdate.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_jsdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_jsdate(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i16*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = call i32 @buffer_need_bytes(%struct.TYPE_5__* %19, i32 30)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %17, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %17, align 8
  store i32 1702125892, i32* %30, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %16, align 8
  store i8 40, i8* %34, align 1
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 1000
  %38 = add nsw i32 48, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %16, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %16, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %9, align 4
  %43 = srem i32 %42, 1000
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 100
  %46 = add nsw i32 48, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %16, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %16, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i32, i32* %9, align 4
  %51 = srem i32 %50, 100
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %52, 10
  %54 = add nsw i32 48, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %16, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %16, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i32, i32* %9, align 4
  %59 = srem i32 %58, 10
  %60 = add nsw i32 48, %59
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %16, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %16, align 8
  store i8 44, i8* %64, align 1
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 10
  %68 = add nsw i32 48, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %16, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i8*, i8** %16, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 48
  br i1 %74, label %75, label %78

75:                                               ; preds = %7
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %16, align 8
  br label %78

78:                                               ; preds = %75, %7
  %79 = load i32, i32* %10, align 4
  %80 = srem i32 %79, 10
  %81 = add nsw i32 48, %80
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i8*, i8** %16, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %16, align 8
  store i8 44, i8* %85, align 1
  %87 = load i32, i32* %11, align 4
  %88 = sdiv i32 %87, 10
  %89 = add nsw i32 48, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %16, align 8
  store i8 %90, i8* %91, align 1
  %92 = load i8*, i8** %16, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 48
  br i1 %95, label %96, label %99

96:                                               ; preds = %78
  %97 = load i8*, i8** %16, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %16, align 8
  br label %99

99:                                               ; preds = %96, %78
  %100 = load i32, i32* %11, align 4
  %101 = srem i32 %100, 10
  %102 = add nsw i32 48, %101
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %16, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8*, i8** %16, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %16, align 8
  store i8 44, i8* %106, align 1
  %108 = load i32, i32* %12, align 4
  %109 = sdiv i32 %108, 10
  %110 = add nsw i32 48, %109
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %16, align 8
  store i8 %111, i8* %112, align 1
  %113 = load i8*, i8** %16, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 48
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %16, align 8
  br label %120

120:                                              ; preds = %117, %99
  %121 = load i32, i32* %12, align 4
  %122 = srem i32 %121, 10
  %123 = add nsw i32 48, %122
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %16, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i8*, i8** %16, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %16, align 8
  store i8 44, i8* %127, align 1
  %129 = load i32, i32* %13, align 4
  %130 = sdiv i32 %129, 10
  %131 = add nsw i32 48, %130
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %16, align 8
  store i8 %132, i8* %133, align 1
  %134 = load i8*, i8** %16, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 48
  br i1 %137, label %138, label %141

138:                                              ; preds = %120
  %139 = load i8*, i8** %16, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %16, align 8
  br label %141

141:                                              ; preds = %138, %120
  %142 = load i32, i32* %13, align 4
  %143 = srem i32 %142, 10
  %144 = add nsw i32 48, %143
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %16, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %16, align 8
  store i8 %145, i8* %146, align 1
  %148 = load i8*, i8** %16, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %16, align 8
  store i8 44, i8* %148, align 1
  %150 = load i32, i32* %14, align 4
  %151 = sdiv i32 %150, 10
  %152 = add nsw i32 48, %151
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %16, align 8
  store i8 %153, i8* %154, align 1
  %155 = load i8*, i8** %16, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 48
  br i1 %158, label %159, label %162

159:                                              ; preds = %141
  %160 = load i8*, i8** %16, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %16, align 8
  br label %162

162:                                              ; preds = %159, %141
  %163 = load i32, i32* %14, align 4
  %164 = srem i32 %163, 10
  %165 = add nsw i32 48, %164
  %166 = trunc i32 %165 to i8
  %167 = load i8*, i8** %16, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %16, align 8
  store i8 %166, i8* %167, align 1
  %169 = load i8*, i8** %16, align 8
  %170 = bitcast i8* %169 to i16*
  store i16* %170, i16** %18, align 8
  %171 = load i16*, i16** %18, align 8
  %172 = getelementptr inbounds i16, i16* %171, i32 1
  store i16* %172, i16** %18, align 8
  store i16 41, i16* %171, align 2
  %173 = load i16*, i16** %18, align 8
  %174 = bitcast i16* %173 to i8*
  %175 = load i8*, i8** %15, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sub nsw i64 %178, 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  store i8 0, i8* %190, align 1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %192 = call i32 @buffer_overflow_check(%struct.TYPE_5__* %191)
  ret void
}

declare dso_local i32 @buffer_need_bytes(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @buffer_overflow_check(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
