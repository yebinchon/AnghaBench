; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_handle_prime.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead-client.c_handle_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ead_msg_salt = type { i32, i32, i32, i32 }

@msg = common dso_local global i32 0, align 4
@salt = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@auth_type = common dso_local global i64 0, align 8
@EAD_AUTH_MD5 = common dso_local global i64 0, align 8
@pw_salt = common dso_local global i64* null, align 8
@MAXSALTLEN = common dso_local global i32 0, align 4
@tcp = common dso_local global %struct.TYPE_6__* null, align 8
@username = common dso_local global i32 0, align 4
@tc = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Client open failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_prime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ead_msg_salt*, align 8
  %3 = load i32, i32* @msg, align 4
  %4 = load i32, i32* getelementptr inbounds ({ i32, i64* }, { i32, i64* }* bitcast (%struct.TYPE_7__* @salt to { i32, i64* }*), i32 0, i32 0), align 8
  %5 = load i64*, i64** getelementptr inbounds ({ i32, i64* }, { i32, i64* }* bitcast (%struct.TYPE_7__* @salt to { i32, i64* }*), i32 0, i32 1), align 8
  %6 = call %struct.ead_msg_salt* @EAD_DATA(i32 %3, i32 %4, i64* %5)
  store %struct.ead_msg_salt* %6, %struct.ead_msg_salt** %2, align 8
  %7 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %2, align 8
  %8 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @salt, i32 0, i32 0), align 8
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @salt, i32 0, i32 1), align 8
  %11 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %2, align 8
  %12 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @salt, i32 0, i32 0), align 8
  %15 = call i32 @memcpy(i64* %10, i32 %13, i32 %14)
  %16 = load i64, i64* @auth_type, align 8
  %17 = load i64, i64* @EAD_AUTH_MD5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %0
  %20 = load i64*, i64** @pw_salt, align 8
  %21 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %2, align 8
  %22 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAXSALTLEN, align 4
  %25 = call i32 @memcpy(i64* %20, i32 %23, i32 %24)
  %26 = load i64*, i64** @pw_salt, align 8
  %27 = load i32, i32* @MAXSALTLEN, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %19, %0
  %32 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %2, align 8
  %33 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_6__* @t_getpreparam(i32 %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** @tcp, align 8
  %36 = load i32, i32* @username, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tcp, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tcp, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @t_clientopen(i32 %36, i32* %38, i32* %40, %struct.TYPE_7__* @salt)
  store i32 %41, i32* @tc, align 4
  %42 = load i32, i32* @tc, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %48

47:                                               ; preds = %31
  store i32 1, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local %struct.ead_msg_salt* @EAD_DATA(i32, i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @t_getpreparam(i32) #1

declare dso_local i32 @t_clientopen(i32, i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
