; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_stats.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_stats.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@AF_SP = common dso_local global i32 0, align 4
@NN_REP = common dso_local global i32 0, align 4
@NN_REQ = common dso_local global i32 0, align 4
@NN_STAT_ACCEPTED_CONNECTIONS = common dso_local global i32 0, align 4
@NN_STAT_ESTABLISHED_CONNECTIONS = common dso_local global i32 0, align 4
@NN_STAT_CURRENT_CONNECTIONS = common dso_local global i32 0, align 4
@NN_STAT_MESSAGES_SENT = common dso_local global i32 0, align 4
@NN_STAT_MESSAGES_RECEIVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@NN_STAT_BYTES_SENT = common dso_local global i32 0, align 4
@NN_STAT_BYTES_RECEIVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @get_test_port(i32 %10, i8** %11)
  %13 = call i32 @test_addr_from(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @AF_SP, align 4
  %15 = load i32, i32* @NN_REP, align 4
  %16 = call i32 @test_socket(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %19 = call i32 @test_bind(i32 %17, i8* %18)
  %20 = call i32 @nn_sleep(i32 100)
  %21 = load i32, i32* @AF_SP, align 4
  %22 = load i32, i32* @NN_REQ, align 4
  %23 = call i32 @test_socket(i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %26 = call i32 @test_connect(i32 %24, i8* %25)
  %27 = call i32 @nn_sleep(i32 200)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NN_STAT_ACCEPTED_CONNECTIONS, align 4
  %30 = call i32 @nn_get_statistic(i32 %28, i32 %29)
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @nn_assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NN_STAT_ESTABLISHED_CONNECTIONS, align 4
  %36 = call i32 @nn_get_statistic(i32 %34, i32 %35)
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @nn_assert(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NN_STAT_CURRENT_CONNECTIONS, align 4
  %42 = call i32 @nn_get_statistic(i32 %40, i32 %41)
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @nn_assert(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %48 = call i32 @nn_get_statistic(i32 %46, i32 %47)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @nn_assert(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %54 = call i32 @nn_get_statistic(i32 %52, i32 %53)
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @nn_assert(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @NN_STAT_ACCEPTED_CONNECTIONS, align 4
  %60 = call i32 @nn_get_statistic(i32 %58, i32 %59)
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @nn_assert(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @NN_STAT_ESTABLISHED_CONNECTIONS, align 4
  %66 = call i32 @nn_get_statistic(i32 %64, i32 %65)
  %67 = icmp eq i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @nn_assert(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @NN_STAT_CURRENT_CONNECTIONS, align 4
  %72 = call i32 @nn_get_statistic(i32 %70, i32 %71)
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = call i32 @nn_assert(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %78 = call i32 @nn_get_statistic(i32 %76, i32 %77)
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @nn_assert(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %84 = call i32 @nn_get_statistic(i32 %82, i32 %83)
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @nn_assert(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @test_send(i32 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32 @nn_sleep(i32 100)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %93 = call i32 @nn_get_statistic(i32 %91, i32 %92)
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = call i32 @nn_assert(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @NN_STAT_BYTES_SENT, align 4
  %99 = call i32 @nn_get_statistic(i32 %97, i32 %98)
  %100 = icmp eq i32 %99, 3
  %101 = zext i1 %100 to i32
  %102 = call i32 @nn_assert(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %105 = call i32 @nn_get_statistic(i32 %103, i32 %104)
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @nn_assert(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @NN_STAT_BYTES_RECEIVED, align 4
  %111 = call i32 @nn_get_statistic(i32 %109, i32 %110)
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @nn_assert(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @test_recv(i32 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %119 = call i32 @nn_get_statistic(i32 %117, i32 %118)
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @nn_assert(i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @NN_STAT_BYTES_SENT, align 4
  %125 = call i32 @nn_get_statistic(i32 %123, i32 %124)
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @nn_assert(i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %131 = call i32 @nn_get_statistic(i32 %129, i32 %130)
  %132 = icmp eq i32 %131, 1
  %133 = zext i1 %132 to i32
  %134 = call i32 @nn_assert(i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @NN_STAT_BYTES_RECEIVED, align 4
  %137 = call i32 @nn_get_statistic(i32 %135, i32 %136)
  %138 = icmp eq i32 %137, 3
  %139 = zext i1 %138 to i32
  %140 = call i32 @nn_assert(i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @test_send(i32 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @test_recv(i32 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %147 = call i32 @nn_get_statistic(i32 %145, i32 %146)
  %148 = icmp eq i32 %147, 1
  %149 = zext i1 %148 to i32
  %150 = call i32 @nn_assert(i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @NN_STAT_BYTES_SENT, align 4
  %153 = call i32 @nn_get_statistic(i32 %151, i32 %152)
  %154 = icmp eq i32 %153, 3
  %155 = zext i1 %154 to i32
  %156 = call i32 @nn_assert(i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %159 = call i32 @nn_get_statistic(i32 %157, i32 %158)
  %160 = icmp eq i32 %159, 1
  %161 = zext i1 %160 to i32
  %162 = call i32 @nn_assert(i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @NN_STAT_BYTES_RECEIVED, align 4
  %165 = call i32 @nn_get_statistic(i32 %163, i32 %164)
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i32
  %168 = call i32 @nn_assert(i32 %167)
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %171 = call i32 @nn_get_statistic(i32 %169, i32 %170)
  %172 = icmp eq i32 %171, 1
  %173 = zext i1 %172 to i32
  %174 = call i32 @nn_assert(i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @NN_STAT_BYTES_SENT, align 4
  %177 = call i32 @nn_get_statistic(i32 %175, i32 %176)
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i32
  %180 = call i32 @nn_assert(i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %183 = call i32 @nn_get_statistic(i32 %181, i32 %182)
  %184 = icmp eq i32 %183, 1
  %185 = zext i1 %184 to i32
  %186 = call i32 @nn_assert(i32 %185)
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @NN_STAT_BYTES_RECEIVED, align 4
  %189 = call i32 @nn_get_statistic(i32 %187, i32 %188)
  %190 = icmp eq i32 %189, 3
  %191 = zext i1 %190 to i32
  %192 = call i32 @nn_assert(i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @test_close(i32 %193)
  %195 = call i32 @nn_sleep(i32 100)
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @NN_STAT_ACCEPTED_CONNECTIONS, align 4
  %198 = call i32 @nn_get_statistic(i32 %196, i32 %197)
  %199 = icmp eq i32 %198, 1
  %200 = zext i1 %199 to i32
  %201 = call i32 @nn_assert(i32 %200)
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @NN_STAT_ESTABLISHED_CONNECTIONS, align 4
  %204 = call i32 @nn_get_statistic(i32 %202, i32 %203)
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @nn_assert(i32 %206)
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @NN_STAT_CURRENT_CONNECTIONS, align 4
  %210 = call i32 @nn_get_statistic(i32 %208, i32 %209)
  %211 = icmp eq i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @nn_assert(i32 %212)
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @test_close(i32 %214)
  ret i32 0
}

declare dso_local i32 @test_addr_from(i8*, i8*, i8*, i32) #1

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i8*) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_connect(i32, i8*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_get_statistic(i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
