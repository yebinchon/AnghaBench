; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_read_more.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream.c_stream_read_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i32, i32, i32, i32, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i32)* @stream_read_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_read_more(%struct.stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stream* %0, %struct.stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.stream*, %struct.stream** %4, align 8
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.stream*, %struct.stream** %4, align 8
  %19 = getelementptr inbounds %struct.stream, %struct.stream* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %221

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.stream*, %struct.stream** %4, align 8
  %29 = getelementptr inbounds %struct.stream, %struct.stream* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 2
  %32 = call i32 @MPMAX(i32 %27, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.stream*, %struct.stream** %4, align 8
  %34 = getelementptr inbounds %struct.stream, %struct.stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.stream*, %struct.stream** %4, align 8
  %37 = getelementptr inbounds %struct.stream, %struct.stream* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load %struct.stream*, %struct.stream** %4, align 8
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 2
  %44 = call i32 @MPMIN(i32 %39, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.stream*, %struct.stream** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @stream_resize_buffer(%struct.stream* %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %221

52:                                               ; preds = %26
  %53 = load %struct.stream*, %struct.stream** %4, align 8
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load %struct.stream*, %struct.stream** %4, align 8
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.stream*, %struct.stream** %4, align 8
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.stream*, %struct.stream** %4, align 8
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.stream*, %struct.stream** %4, align 8
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.stream*, %struct.stream** %4, align 8
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 2
  %80 = icmp slt i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.stream*, %struct.stream** %4, align 8
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %86, 2
  %88 = icmp slt i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.stream*, %struct.stream** %4, align 8
  %92 = getelementptr inbounds %struct.stream, %struct.stream* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %9, align 4
  %103 = load %struct.stream*, %struct.stream** %4, align 8
  %104 = getelementptr inbounds %struct.stream, %struct.stream* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.stream*, %struct.stream** %4, align 8
  %107 = getelementptr inbounds %struct.stream, %struct.stream* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %105, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @MPMIN(i32 %110, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.stream*, %struct.stream** %4, align 8
  %116 = load %struct.stream*, %struct.stream** %4, align 8
  %117 = getelementptr inbounds %struct.stream, %struct.stream* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @stream_read_unbuffered(%struct.stream* %115, i32* %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.stream*, %struct.stream** %4, align 8
  %126 = getelementptr inbounds %struct.stream, %struct.stream* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.stream*, %struct.stream** %4, align 8
  %130 = getelementptr inbounds %struct.stream, %struct.stream* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.stream*, %struct.stream** %4, align 8
  %133 = getelementptr inbounds %struct.stream, %struct.stream* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %193

138:                                              ; preds = %52
  %139 = load %struct.stream*, %struct.stream** %4, align 8
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = icmp sge i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.stream*, %struct.stream** %4, align 8
  %147 = getelementptr inbounds %struct.stream, %struct.stream* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load %struct.stream*, %struct.stream** %4, align 8
  %152 = getelementptr inbounds %struct.stream, %struct.stream* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.stream*, %struct.stream** %4, align 8
  %154 = getelementptr inbounds %struct.stream, %struct.stream* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.stream*, %struct.stream** %4, align 8
  %157 = getelementptr inbounds %struct.stream, %struct.stream* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %155, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.stream*, %struct.stream** %4, align 8
  %163 = getelementptr inbounds %struct.stream, %struct.stream* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.stream*, %struct.stream** %4, align 8
  %166 = getelementptr inbounds %struct.stream, %struct.stream* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sle i32 %164, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.stream*, %struct.stream** %4, align 8
  %172 = getelementptr inbounds %struct.stream, %struct.stream* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %138
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.stream*, %struct.stream** %4, align 8
  %179 = getelementptr inbounds %struct.stream, %struct.stream* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.stream*, %struct.stream** %4, align 8
  %184 = getelementptr inbounds %struct.stream, %struct.stream* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.stream*, %struct.stream** %4, align 8
  %189 = getelementptr inbounds %struct.stream, %struct.stream* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %176, %138
  br label %193

193:                                              ; preds = %192, %52
  %194 = load %struct.stream*, %struct.stream** %4, align 8
  %195 = getelementptr inbounds %struct.stream, %struct.stream* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.stream*, %struct.stream** %4, align 8
  %198 = getelementptr inbounds %struct.stream, %struct.stream* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  %201 = load i32, i32* %7, align 4
  %202 = icmp sge i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.stream*, %struct.stream** %4, align 8
  %206 = getelementptr inbounds %struct.stream, %struct.stream* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.stream*, %struct.stream** %4, align 8
  %209 = getelementptr inbounds %struct.stream, %struct.stream* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %193
  %213 = load %struct.stream*, %struct.stream** %4, align 8
  %214 = getelementptr inbounds %struct.stream, %struct.stream* %213, i32 0, i32 5
  store i64 0, i64* %214, align 8
  br label %215

215:                                              ; preds = %212, %193
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %215, %51, %25
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @stream_resize_buffer(%struct.stream*, i32) #1

declare dso_local i32 @stream_read_unbuffered(%struct.stream*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
