; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_des.c_authdes_refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_auth_des.c_authdes_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.ad_private = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, %struct.authdes_cred }
%struct.authdes_cred = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i64 }

@FALSE = common dso_local global i32 0, align 4
@ADN_FULLNAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @authdes_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authdes_refresh(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ad_private*, align 8
  %7 = alloca %struct.authdes_cred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_9__* %10)
  store %struct.ad_private* %11, %struct.ad_private** %6, align 8
  %12 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %13 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %12, i32 0, i32 10
  store %struct.authdes_cred* %13, %struct.authdes_cred** %7, align 8
  %14 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %15 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %23 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %30 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %32 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %37 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %44 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %47 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %46, i32 0, i32 1
  %48 = call i64 @key_encryptsession_pk(i32 %45, %struct.TYPE_8__* %9, i32* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %25
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %25
  %53 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %54 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.authdes_cred*, %struct.authdes_cred** %7, align 8
  %57 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @ADN_FULLNAME, align 4
  %60 = load %struct.authdes_cred*, %struct.authdes_cred** %7, align 8
  %61 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %63 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.authdes_cred*, %struct.authdes_cred** %7, align 8
  %66 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %52, %50
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_9__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @key_encryptsession_pk(i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
