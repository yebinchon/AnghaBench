; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_send.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.nn_msg*)* }
%struct.TYPE_4__ = type { i32 }
%struct.nn_msg = type { i32 }

@NN_SOCKTYPE_FLAG_NOSEND = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NN_DONTWAIT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@NN_SOCK_FLAG_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_send(%struct.nn_sock* %0, %struct.nn_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_sock*, align 8
  %6 = alloca %struct.nn_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %5, align 8
  store %struct.nn_msg* %1, %struct.nn_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %13 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %12, i32 0, i32 6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @nn_slow(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOTSUP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %182

24:                                               ; preds = %3
  %25 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %26 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %25, i32 0, i32 4
  %27 = call i32 @nn_ctx_enter(i32* %26)
  %28 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %29 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  br label %42

33:                                               ; preds = %24
  %34 = call i32 (...) @nn_clock_ms()
  %35 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %36 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %40 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %33, %32
  br label %43

43:                                               ; preds = %42, %181
  %44 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %45 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %54 [
    i32 132, label %47
    i32 130, label %47
    i32 128, label %48
    i32 129, label %48
    i32 131, label %48
  ]

47:                                               ; preds = %43, %43
  br label %54

48:                                               ; preds = %43, %43, %43
  %49 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %50 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %49, i32 0, i32 4
  %51 = call i32 @nn_ctx_leave(i32* %50)
  %52 = load i32, i32* @EBADF, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %182

54:                                               ; preds = %43, %47
  %55 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %56 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %55, i32 0, i32 5
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_6__*, %struct.nn_msg*)*, i32 (%struct.TYPE_6__*, %struct.nn_msg*)** %60, align 8
  %62 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %63 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %62, i32 0, i32 5
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.nn_msg*, %struct.nn_msg** %6, align 8
  %66 = call i32 %61(%struct.TYPE_6__* %64, %struct.nn_msg* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @nn_fast(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %74 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %73, i32 0, i32 4
  %75 = call i32 @nn_ctx_leave(i32* %74)
  store i32 0, i32* %4, align 4
  br label %182

76:                                               ; preds = %54
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @nn_assert(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @nn_slow(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %90 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %89, i32 0, i32 4
  %91 = call i32 @nn_ctx_leave(i32* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %182

93:                                               ; preds = %76
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @NN_DONTWAIT, align 4
  %96 = and i32 %94, %95
  %97 = call i64 @nn_fast(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %101 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %100, i32 0, i32 4
  %102 = call i32 @nn_ctx_leave(i32* %101)
  %103 = load i32, i32* @EAGAIN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %182

105:                                              ; preds = %93
  %106 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %107 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %106, i32 0, i32 4
  %108 = call i32 @nn_ctx_leave(i32* %107)
  %109 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %110 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %109, i32 0, i32 3
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @nn_efd_wait(i32* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @nn_slow(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load i32, i32* @ETIMEDOUT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %182

123:                                              ; preds = %105
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @EINTR, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @nn_slow(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* @EINTR, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %182

134:                                              ; preds = %123
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @EBADF, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  %139 = zext i1 %138 to i32
  %140 = call i64 @nn_slow(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load i32, i32* @EBADF, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %182

145:                                              ; preds = %134
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @errnum_assert(i32 %148, i32 %149)
  %151 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %152 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %151, i32 0, i32 4
  %153 = call i32 @nn_ctx_enter(i32* %152)
  %154 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %155 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %154, i32 0, i32 3
  %156 = call i32 @nn_efd_wait(i32* %155, i32 0)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %145
  %159 = load i32, i32* @NN_SOCK_FLAG_OUT, align 4
  %160 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %161 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %145
  %165 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %166 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = call i32 (...) @nn_clock_ms()
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %179

175:                                              ; preds = %169
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = sub nsw i32 %176, %177
  br label %179

179:                                              ; preds = %175, %174
  %180 = phi i32 [ 0, %174 ], [ %178, %175 ]
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %179, %164
  br label %43

182:                                              ; preds = %142, %131, %120, %99, %88, %72, %48, %21
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_ctx_enter(i32*) #1

declare dso_local i32 @nn_clock_ms(...) #1

declare dso_local i32 @nn_ctx_leave(i32*) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_efd_wait(i32*, i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
