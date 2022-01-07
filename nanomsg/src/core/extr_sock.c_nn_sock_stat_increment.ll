; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_stat_increment.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_stat_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sock_stat_increment(%struct.nn_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nn_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %245 [
    i32 131, label %8
    i32 142, label %19
    i32 132, label %30
    i32 139, label %41
    i32 136, label %52
    i32 140, label %63
    i32 141, label %74
    i32 128, label %85
    i32 129, label %96
    i32 137, label %107
    i32 138, label %118
    i32 135, label %129
    i32 130, label %162
    i32 133, label %195
    i32 134, label %212
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @nn_assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %15 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, %13
  store i32 %18, i32* %16, align 4
  br label %245

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @nn_assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %26 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %245

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @nn_assert(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %37 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %245

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @nn_assert(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %48 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %245

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @nn_assert(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %59 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %245

63:                                               ; preds = %3
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @nn_assert(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %70 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %245

74:                                               ; preds = %3
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @nn_assert(i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %81 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %245

85:                                               ; preds = %3
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @nn_assert(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %92 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %245

96:                                               ; preds = %3
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @nn_assert(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %103 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %245

107:                                              ; preds = %3
  %108 = load i32, i32* %6, align 4
  %109 = icmp sge i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @nn_assert(i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %114 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %245

118:                                              ; preds = %3
  %119 = load i32, i32* %6, align 4
  %120 = icmp sge i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @nn_assert(i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %125 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %245

129:                                              ; preds = %3
  %130 = load i32, i32* %6, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %134 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp sge i32 %136, %138
  br label %140

140:                                              ; preds = %132, %129
  %141 = phi i1 [ true, %129 ], [ %139, %132 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @nn_assert(i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @INT_MAX, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @INT_MAX, align 4
  %150 = sub nsw i32 0, %149
  %151 = icmp sgt i32 %148, %150
  br label %152

152:                                              ; preds = %147, %140
  %153 = phi i1 [ false, %140 ], [ %151, %147 ]
  %154 = zext i1 %153 to i32
  %155 = call i32 @nn_assert(i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %158 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 11
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %156
  store i32 %161, i32* %159, align 4
  br label %245

162:                                              ; preds = %3
  %163 = load i32, i32* %6, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %162
  %166 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %167 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %6, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp sge i32 %169, %171
  br label %173

173:                                              ; preds = %165, %162
  %174 = phi i1 [ true, %162 ], [ %172, %165 ]
  %175 = zext i1 %174 to i32
  %176 = call i32 @nn_assert(i32 %175)
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @INT_MAX, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @INT_MAX, align 4
  %183 = sub nsw i32 0, %182
  %184 = icmp sgt i32 %181, %183
  br label %185

185:                                              ; preds = %180, %173
  %186 = phi i1 [ false, %173 ], [ %184, %180 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @nn_assert(i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %191 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %189
  store i32 %194, i32* %192, align 4
  br label %245

195:                                              ; preds = %3
  %196 = load i32, i32* %6, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = icmp sle i32 %199, 16
  br i1 %200, label %204, label %201

201:                                              ; preds = %198, %195
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, -1
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i1 [ true, %198 ], [ %203, %201 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @nn_assert(i32 %206)
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %210 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 13
  store i32 %208, i32* %211, align 4
  br label %245

212:                                              ; preds = %3
  %213 = load i32, i32* %6, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %212
  %216 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %217 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 14
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %6, align 4
  %221 = sub nsw i32 0, %220
  %222 = icmp sge i32 %219, %221
  br label %223

223:                                              ; preds = %215, %212
  %224 = phi i1 [ true, %212 ], [ %222, %215 ]
  %225 = zext i1 %224 to i32
  %226 = call i32 @nn_assert(i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @INT_MAX, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @INT_MAX, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp sgt i32 %231, %233
  br label %235

235:                                              ; preds = %230, %223
  %236 = phi i1 [ false, %223 ], [ %234, %230 ]
  %237 = zext i1 %236 to i32
  %238 = call i32 @nn_assert(i32 %237)
  %239 = load i32, i32* %6, align 4
  %240 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %241 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 14
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, %239
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %3, %235, %204, %185, %152, %118, %107, %96, %85, %74, %63, %52, %41, %30, %19, %8
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
