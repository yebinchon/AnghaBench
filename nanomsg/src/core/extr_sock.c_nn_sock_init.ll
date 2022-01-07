; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nn_socktype*, i32, i32**, i64, i32*, i32, i32, %struct.TYPE_2__, i64, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nn_socktype = type { i32, i32 (i8*, i32*)* }

@NN_SOCKTYPE_FLAG_NOSEND = common dso_local global i32 0, align 4
@NN_SOCKTYPE_FLAG_NORECV = common dso_local global i32 0, align 4
@nn_sock_onleave = common dso_local global i32 0, align 4
@nn_sock_handler = common dso_local global i32 0, align 4
@nn_sock_shutdown = common dso_local global i32 0, align 4
@NN_SOCK_STATE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NN_MAX_TRANSPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_init(%struct.nn_sock* %0, %struct.nn_socktype* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_sock*, align 8
  %6 = alloca %struct.nn_socktype*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %5, align 8
  store %struct.nn_socktype* %1, %struct.nn_socktype** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %11 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %18 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NN_SOCKTYPE_FLAG_NORECV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %16, %3
  %25 = phi i1 [ true, %3 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @nn_assert(i32 %26)
  %28 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %29 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %28, i32 0, i32 11
  %30 = call i32 (...) @nn_global_getpool()
  %31 = load i32, i32* @nn_sock_onleave, align 4
  %32 = call i32 @nn_ctx_init(i32* %29, i32 %30, i32 %31)
  %33 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %34 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %33, i32 0, i32 12
  %35 = load i32, i32* @nn_sock_handler, align 4
  %36 = load i32, i32* @nn_sock_shutdown, align 4
  %37 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %38 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %37, i32 0, i32 11
  %39 = call i32 @nn_fsm_init_root(i32* %34, i32 %35, i32 %36, i32* %38)
  %40 = load i32, i32* @NN_SOCK_STATE_INIT, align 4
  %41 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %42 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %41, i32 0, i32 29
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %44 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %24
  %50 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %51 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %50, i32 0, i32 25
  %52 = call i32 @memset(i32* %51, i32 205, i32 4)
  br label %65

53:                                               ; preds = %24
  %54 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %55 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %54, i32 0, i32 25
  %56 = call i32 @nn_efd_init(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @nn_slow(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %230

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %49
  %66 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %67 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NN_SOCKTYPE_FLAG_NORECV, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %74 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %73, i32 0, i32 26
  %75 = call i32 @memset(i32* %74, i32 205, i32 4)
  br label %99

76:                                               ; preds = %65
  %77 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %78 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %77, i32 0, i32 26
  %79 = call i32 @nn_efd_init(i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @nn_slow(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %87 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %94 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %93, i32 0, i32 25
  %95 = call i32 @nn_efd_term(i32* %94)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %230

98:                                               ; preds = %76
  br label %99

99:                                               ; preds = %98, %72
  %100 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %101 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %100, i32 0, i32 28
  %102 = call i32 @nn_sem_init(i32* %101)
  %103 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %104 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %103, i32 0, i32 27
  %105 = call i32 @nn_sem_init(i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i64 @nn_slow(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %99
  %112 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %113 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @NN_SOCKTYPE_FLAG_NORECV, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %120 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %119, i32 0, i32 26
  %121 = call i32 @nn_efd_term(i32* %120)
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %124 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NN_SOCKTYPE_FLAG_NOSEND, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %122
  %130 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %131 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %130, i32 0, i32 25
  %132 = call i32 @nn_efd_term(i32* %131)
  br label %133

133:                                              ; preds = %129, %122
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %230

135:                                              ; preds = %99
  %136 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %137 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %139 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %138, i32 0, i32 24
  store i64 0, i64* %139, align 8
  %140 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %141 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %140, i32 0, i32 23
  %142 = call i32 @nn_list_init(i32* %141)
  %143 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %144 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %143, i32 0, i32 22
  %145 = call i32 @nn_list_init(i32* %144)
  %146 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %147 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %149 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %148, i32 0, i32 2
  store i32 131072, i32* %149, align 8
  %150 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %151 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %150, i32 0, i32 3
  store i32 131072, i32* %151, align 4
  %152 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %153 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %152, i32 0, i32 4
  store i32 1048576, i32* %153, align 8
  %154 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %155 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %154, i32 0, i32 5
  store i32 -1, i32* %155, align 4
  %156 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %157 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %156, i32 0, i32 6
  store i32 -1, i32* %157, align 8
  %158 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %159 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %158, i32 0, i32 7
  store i32 100, i32* %159, align 4
  %160 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %161 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %160, i32 0, i32 21
  store i64 0, i64* %161, align 8
  %162 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %163 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %162, i32 0, i32 8
  store i32 8, i32* %163, align 8
  %164 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %165 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %164, i32 0, i32 20
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 8, i32* %166, align 8
  %167 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %168 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %167, i32 0, i32 20
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store i32 8, i32* %169, align 4
  %170 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %171 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %170, i32 0, i32 20
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 1, i32* %172, align 8
  %173 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %174 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %173, i32 0, i32 19
  %175 = call i32 @memset(i32* %174, i32 0, i32 4)
  %176 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %177 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %176, i32 0, i32 18
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @sprintf(i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %182 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %181, i32 0, i32 17
  store i32* null, i32** %182, align 8
  %183 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %184 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %183, i32 0, i32 16
  store i64 0, i64* %184, align 8
  %185 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %186 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %185, i32 0, i32 9
  store i32 4096, i32* %186, align 4
  %187 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %188 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %187, i32 0, i32 10
  store i32 4096, i32* %188, align 8
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %200, %135
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @NN_MAX_TRANSPORT, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %195 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %194, i32 0, i32 15
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  store i32* null, i32** %199, align 8
  br label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %189

203:                                              ; preds = %189
  %204 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %205 = getelementptr inbounds %struct.nn_socktype, %struct.nn_socktype* %204, i32 0, i32 1
  %206 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %205, align 8
  %207 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %208 = bitcast %struct.nn_sock* %207 to i8*
  %209 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %210 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %209, i32 0, i32 14
  %211 = call i32 %206(i8* %208, i32* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = load i32, i32* %8, align 4
  %216 = sub nsw i32 0, %215
  %217 = call i32 @errnum_assert(i32 %214, i32 %216)
  %218 = load %struct.nn_socktype*, %struct.nn_socktype** %6, align 8
  %219 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %220 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %219, i32 0, i32 13
  store %struct.nn_socktype* %218, %struct.nn_socktype** %220, align 8
  %221 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %222 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %221, i32 0, i32 11
  %223 = call i32 @nn_ctx_enter(i32* %222)
  %224 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %225 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %224, i32 0, i32 12
  %226 = call i32 @nn_fsm_start(i32* %225)
  %227 = load %struct.nn_sock*, %struct.nn_sock** %5, align 8
  %228 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %227, i32 0, i32 11
  %229 = call i32 @nn_ctx_leave(i32* %228)
  store i32 0, i32* %4, align 4
  br label %230

230:                                              ; preds = %203, %133, %96, %62
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_ctx_init(i32*, i32, i32) #1

declare dso_local i32 @nn_global_getpool(...) #1

declare dso_local i32 @nn_fsm_init_root(i32*, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nn_efd_init(i32*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_efd_term(i32*) #1

declare dso_local i32 @nn_sem_init(i32*) #1

declare dso_local i32 @nn_list_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_ctx_enter(i32*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

declare dso_local i32 @nn_ctx_leave(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
