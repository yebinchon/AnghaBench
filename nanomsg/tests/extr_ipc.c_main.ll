; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ipc.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ipc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"0123456789012345678901234567890123456789\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@EADDRINUSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVMAXSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1
@NN_MSG = common dso_local global i32 0, align 4
@NN_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i64 4, i64* %10, align 8
  %13 = load i32, i32* @AF_SP, align 4
  %14 = load i32, i32* @NN_PAIR, align 4
  %15 = call i32 @test_socket(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SOCKET_ADDRESS, align 4
  %18 = call i32 @test_connect(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @test_close(i32 %19)
  %21 = load i32, i32* @AF_SP, align 4
  %22 = load i32, i32* @NN_PAIR, align 4
  %23 = call i32 @test_socket(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SOCKET_ADDRESS, align 4
  %26 = call i32 @test_connect(i32 %24, i32 %25)
  %27 = call i32 @nn_sleep(i32 200)
  %28 = load i32, i32* @AF_SP, align 4
  %29 = load i32, i32* @NN_PAIR, align 4
  %30 = call i32 @test_socket(i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @SOCKET_ADDRESS, align 4
  %33 = call i32 @test_bind(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %46, %0
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @test_send(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @test_recv(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @test_send(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @test_recv(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %34

49:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %56, %49
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 100
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @test_send(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %50

59:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %66, %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 100
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @test_recv(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %60

69:                                               ; preds = %60
  store i32 10000, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i8* @malloc(i32 %70)
  store i8* %71, i8** %12, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %85, %69
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = srem i32 %77, 10
  %79 = add nsw i32 48, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %72

88:                                               ; preds = %72
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i32, i32* %3, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @test_send(i32 %94, i8* %95)
  %97 = load i32, i32* %2, align 4
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @test_recv(i32 %97, i8* %98)
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @test_close(i32 %102)
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @test_close(i32 %104)
  %106 = load i32, i32* @AF_SP, align 4
  %107 = load i32, i32* @NN_PAIR, align 4
  %108 = call i32 @test_socket(i32 %106, i32 %107)
  store i32 %108, i32* %2, align 4
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @SOCKET_ADDRESS, align 4
  %111 = call i32 @test_bind(i32 %109, i32 %110)
  %112 = load i32, i32* @AF_SP, align 4
  %113 = load i32, i32* @NN_PAIR, align 4
  %114 = call i32 @test_socket(i32 %112, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SOCKET_ADDRESS, align 4
  %117 = call i32 @test_connect(i32 %115, i32 %116)
  %118 = load i32, i32* @AF_SP, align 4
  %119 = load i32, i32* @NN_PAIR, align 4
  %120 = call i32 @test_socket(i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @SOCKET_ADDRESS, align 4
  %123 = call i32 @test_connect(i32 %121, i32 %122)
  %124 = call i32 @nn_sleep(i32 100)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @test_close(i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @test_close(i32 %127)
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @test_close(i32 %129)
  %131 = load i32, i32* @AF_SP, align 4
  %132 = load i32, i32* @NN_PAIR, align 4
  %133 = call i32 @test_socket(i32 %131, i32 %132)
  store i32 %133, i32* %2, align 4
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @SOCKET_ADDRESS, align 4
  %136 = call i32 @test_bind(i32 %134, i32 %135)
  %137 = load i32, i32* @AF_SP, align 4
  %138 = load i32, i32* @NN_PAIR, align 4
  %139 = call i32 @test_socket(i32 %137, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @SOCKET_ADDRESS, align 4
  %142 = call i32 @nn_bind(i32 %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @nn_assert(i32 %145)
  %147 = call i64 (...) @nn_errno()
  %148 = load i64, i64* @EADDRINUSE, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @errno_assert(i32 %150)
  %152 = load i32, i32* @AF_SP, align 4
  %153 = load i32, i32* @NN_PAIR, align 4
  %154 = call i32 @test_socket(i32 %152, i32 %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @SOCKET_ADDRESS, align 4
  %157 = call i32 @test_connect(i32 %155, i32 %156)
  %158 = call i32 @nn_sleep(i32 100)
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @test_send(i32 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @test_recv(i32 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @test_close(i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @test_close(i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @test_close(i32 %167)
  %169 = load i32, i32* @AF_SP, align 4
  %170 = load i32, i32* @NN_PAIR, align 4
  %171 = call i32 @test_socket(i32 %169, i32 %170)
  store i32 %171, i32* %2, align 4
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @SOCKET_ADDRESS, align 4
  %174 = call i32 @test_bind(i32 %172, i32 %173)
  %175 = load i32, i32* @AF_SP, align 4
  %176 = load i32, i32* @NN_PAIR, align 4
  %177 = call i32 @test_socket(i32 %175, i32 %176)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @SOCKET_ADDRESS, align 4
  %180 = call i32 @test_connect(i32 %178, i32 %179)
  store i32 4, i32* %9, align 4
  %181 = load i32, i32* %2, align 4
  %182 = load i32, i32* @NN_SOL_SOCKET, align 4
  %183 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %184 = load i64, i64* %10, align 8
  %185 = call i32 @nn_setsockopt(i32 %181, i32 %182, i32 %183, i32* %9, i64 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @nn_assert(i32 %188)
  %190 = call i32 @nn_sleep(i32 100)
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @test_send(i32 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @test_recv(i32 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @test_send(i32 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %197 = call i32 @nn_sleep(i32 100)
  %198 = load i32, i32* %2, align 4
  %199 = load i32, i32* @NN_MSG, align 4
  %200 = load i32, i32* @NN_DONTWAIT, align 4
  %201 = call i32 @nn_recv(i32 %198, i8** %7, i32 %199, i32 %200)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @nn_assert(i32 %204)
  %206 = call i64 (...) @nn_errno()
  %207 = load i64, i64* @EAGAIN, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @errno_assert(i32 %209)
  %211 = load i32, i32* %2, align 4
  %212 = call i32 @test_close(i32 %211)
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @test_close(i32 %213)
  %215 = load i32, i32* @AF_SP, align 4
  %216 = load i32, i32* @NN_PAIR, align 4
  %217 = call i32 @test_socket(i32 %215, i32 %216)
  store i32 %217, i32* %2, align 4
  store i32 -1, i32* %9, align 4
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* @NN_SOL_SOCKET, align 4
  %220 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %221 = load i64, i64* %10, align 8
  %222 = call i32 @nn_setsockopt(i32 %218, i32 %219, i32 %220, i32* %9, i64 %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp sge i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @nn_assert(i32 %225)
  store i32 -2, i32* %9, align 4
  %227 = load i32, i32* %2, align 4
  %228 = load i32, i32* @NN_SOL_SOCKET, align 4
  %229 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %230 = load i64, i64* %10, align 8
  %231 = call i32 @nn_setsockopt(i32 %227, i32 %228, i32 %229, i32* %9, i64 %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp slt i32 %232, 0
  %234 = zext i1 %233 to i32
  %235 = call i32 @nn_assert(i32 %234)
  %236 = call i64 (...) @nn_errno()
  %237 = load i64, i64* @EINVAL, align 8
  %238 = icmp eq i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @errno_assert(i32 %239)
  %241 = load i32, i32* %2, align 4
  %242 = call i32 @test_close(i32 %241)
  %243 = load i32, i32* @AF_SP, align 4
  %244 = load i32, i32* @NN_PAIR, align 4
  %245 = call i32 @test_socket(i32 %243, i32 %244)
  store i32 %245, i32* %3, align 4
  %246 = load i32, i32* %3, align 4
  %247 = load i32, i32* @SOCKET_ADDRESS, align 4
  %248 = call i32 @test_connect(i32 %246, i32 %247)
  %249 = call i32 @nn_sleep(i32 100)
  %250 = load i32, i32* %3, align 4
  %251 = call i32 @test_close(i32 %250)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nn_bind(i32, i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i64) #1

declare dso_local i32 @nn_recv(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
