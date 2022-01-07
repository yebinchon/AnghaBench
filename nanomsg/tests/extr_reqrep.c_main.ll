; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_reqrep.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_reqrep.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_REP = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@NN_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@EFSM = common dso_local global i64 0, align 8
@NN_REQ_RESEND_IVL = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"REPLY\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [7 x i8], align 1
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @AF_SP, align 4
  %11 = load i32, i32* @NN_REP, align 4
  %12 = call i32 @test_socket(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SOCKET_ADDRESS, align 4
  %15 = call i32 @test_bind(i32 %13, i32 %14)
  %16 = load i32, i32* @AF_SP, align 4
  %17 = load i32, i32* @NN_REQ, align 4
  %18 = call i32 @test_socket(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SOCKET_ADDRESS, align 4
  %21 = call i32 @test_connect(i32 %19, i32 %20)
  %22 = load i32, i32* @AF_SP, align 4
  %23 = load i32, i32* @NN_REQ, align 4
  %24 = call i32 @test_socket(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SOCKET_ADDRESS, align 4
  %27 = call i32 @test_connect(i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @nn_send(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32 0)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %0
  %33 = call i64 (...) @nn_errno()
  %34 = load i64, i64* @EFSM, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %0
  %37 = phi i1 [ false, %0 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @nn_assert(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %42 = call i32 @nn_recv(i32 %40, i8* %41, i32 7, i32 0)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = call i64 (...) @nn_errno()
  %47 = load i64, i64* @EFSM, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %45, %36
  %50 = phi i1 [ false, %36 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @nn_assert(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @test_send(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @test_recv(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @test_send(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @test_recv(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @test_send(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @test_recv(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @test_send(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @test_recv(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @test_close(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @test_close(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @test_close(i32 %73)
  %75 = load i32, i32* @AF_SP, align 4
  %76 = load i32, i32* @NN_REQ, align 4
  %77 = call i32 @test_socket(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SOCKET_ADDRESS, align 4
  %80 = call i32 @test_bind(i32 %78, i32 %79)
  %81 = load i32, i32* @AF_SP, align 4
  %82 = load i32, i32* @NN_REP, align 4
  %83 = call i32 @test_socket(i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @SOCKET_ADDRESS, align 4
  %86 = call i32 @test_connect(i32 %84, i32 %85)
  %87 = load i32, i32* @AF_SP, align 4
  %88 = load i32, i32* @NN_REP, align 4
  %89 = call i32 @test_socket(i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @SOCKET_ADDRESS, align 4
  %92 = call i32 @test_connect(i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @test_send(i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @test_recv(i32 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @test_send(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @test_recv(i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @test_send(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @test_recv(i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @test_send(i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @test_recv(i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @test_close(i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @test_close(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @test_close(i32 %113)
  %115 = load i32, i32* @AF_SP, align 4
  %116 = load i32, i32* @NN_REP, align 4
  %117 = call i32 @test_socket(i32 %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @SOCKET_ADDRESS, align 4
  %120 = call i32 @test_bind(i32 %118, i32 %119)
  %121 = load i32, i32* @AF_SP, align 4
  %122 = load i32, i32* @NN_REQ, align 4
  %123 = call i32 @test_socket(i32 %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @SOCKET_ADDRESS, align 4
  %126 = call i32 @test_connect(i32 %124, i32 %125)
  store i32 100, i32* %7, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @NN_REQ, align 4
  %129 = load i32, i32* @NN_REQ_RESEND_IVL, align 4
  %130 = call i32 @nn_setsockopt(i32 %127, i32 %128, i32 %129, i32* %7, i32 4)
  store i32 %130, i32* %2, align 4
  %131 = load i32, i32* %2, align 4
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @errno_assert(i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @test_send(i32 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @test_recv(i32 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @test_recv(i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @test_close(i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @test_close(i32 %143)
  %145 = load i32, i32* @AF_SP, align 4
  %146 = load i32, i32* @NN_REQ, align 4
  %147 = call i32 @test_socket(i32 %145, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @SOCKET_ADDRESS, align 4
  %150 = call i32 @test_connect(i32 %148, i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @test_send(i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %153 = load i32, i32* @AF_SP, align 4
  %154 = load i32, i32* @NN_REP, align 4
  %155 = call i32 @test_socket(i32 %153, i32 %154)
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @SOCKET_ADDRESS, align 4
  %158 = call i32 @test_bind(i32 %156, i32 %157)
  store i32 200, i32* %9, align 4
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @NN_SOL_SOCKET, align 4
  %161 = load i32, i32* @NN_RCVTIMEO, align 4
  %162 = call i32 @nn_setsockopt(i32 %159, i32 %160, i32 %161, i32* %9, i32 4)
  store i32 %162, i32* %2, align 4
  %163 = load i32, i32* %2, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @errno_assert(i32 %165)
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @test_recv(i32 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @test_close(i32 %169)
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @test_close(i32 %171)
  %173 = load i32, i32* @AF_SP, align 4
  %174 = load i32, i32* @NN_REQ, align 4
  %175 = call i32 @test_socket(i32 %173, i32 %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @SOCKET_ADDRESS, align 4
  %178 = call i32 @test_bind(i32 %176, i32 %177)
  %179 = load i32, i32* @AF_SP, align 4
  %180 = load i32, i32* @NN_REP, align 4
  %181 = call i32 @test_socket(i32 %179, i32 %180)
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @SOCKET_ADDRESS, align 4
  %184 = call i32 @test_connect(i32 %182, i32 %183)
  %185 = load i32, i32* @AF_SP, align 4
  %186 = load i32, i32* @NN_REP, align 4
  %187 = call i32 @test_socket(i32 %185, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @SOCKET_ADDRESS, align 4
  %190 = call i32 @test_connect(i32 %188, i32 %189)
  store i32 200, i32* %9, align 4
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* @NN_SOL_SOCKET, align 4
  %193 = load i32, i32* @NN_RCVTIMEO, align 4
  %194 = call i32 @nn_setsockopt(i32 %191, i32 %192, i32 %193, i32* %9, i32 4)
  store i32 %194, i32* %2, align 4
  %195 = load i32, i32* %2, align 4
  %196 = icmp eq i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @errno_assert(i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @NN_SOL_SOCKET, align 4
  %201 = load i32, i32* @NN_RCVTIMEO, align 4
  %202 = call i32 @nn_setsockopt(i32 %199, i32 %200, i32 %201, i32* %9, i32 4)
  store i32 %202, i32* %2, align 4
  %203 = load i32, i32* %2, align 4
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @errno_assert(i32 %205)
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @test_send(i32 %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @test_recv(i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @test_close(i32 %211)
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @test_recv(i32 %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @test_send(i32 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @test_recv(i32 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @test_close(i32 %219)
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @test_close(i32 %221)
  %223 = load i32, i32* @AF_SP, align 4
  %224 = load i32, i32* @NN_REQ, align 4
  %225 = call i32 @test_socket(i32 %223, i32 %224)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @SOCKET_ADDRESS, align 4
  %228 = call i32 @test_connect(i32 %226, i32 %227)
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @test_send(i32 %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @test_send(i32 %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %233 = load i32, i32* @AF_SP, align 4
  %234 = load i32, i32* @NN_REP, align 4
  %235 = call i32 @test_socket(i32 %233, i32 %234)
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* %3, align 4
  %237 = load i32, i32* @SOCKET_ADDRESS, align 4
  %238 = call i32 @test_bind(i32 %236, i32 %237)
  store i32 100, i32* %9, align 4
  %239 = load i32, i32* %3, align 4
  %240 = call i32 @test_recv(i32 %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @test_close(i32 %241)
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @test_close(i32 %243)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @nn_recv(i32, i8*, i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
