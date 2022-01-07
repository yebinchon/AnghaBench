; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_BANNER_VERSION.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_BANNER_VERSION.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

@PROTO_SSL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SSLv3 \00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@PROTO_VULN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SSL[v3] \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TLS/1.0 \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"TLS/1.1 \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"TLS/1.2 \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TLS/1.3 \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"SSLver[%u,%u] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BannerOutput*, i32, i32)* @BANNER_VERSION to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BANNER_VERSION(%struct.BannerOutput* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.BannerOutput*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store %struct.BannerOutput* %0, %struct.BannerOutput** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 8
  %10 = load i32, i32* %6, align 4
  %11 = or i32 %9, %10
  switch i32 %11, label %41 [
    i32 768, label %12
    i32 769, label %21
    i32 770, label %26
    i32 771, label %31
    i32 772, label %36
  ]

12:                                               ; preds = %3
  %13 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %14 = load i32, i32* @PROTO_SSL3, align 4
  %15 = load i32, i32* @AUTO_LEN, align 4
  %16 = call i32 @banout_append(%struct.BannerOutput* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %18 = load i32, i32* @PROTO_VULN, align 4
  %19 = load i32, i32* @AUTO_LEN, align 4
  %20 = call i32 @banout_append(%struct.BannerOutput* %17, i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %23 = load i32, i32* @PROTO_SSL3, align 4
  %24 = load i32, i32* @AUTO_LEN, align 4
  %25 = call i32 @banout_append(%struct.BannerOutput* %22, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %28 = load i32, i32* @PROTO_SSL3, align 4
  %29 = load i32, i32* @AUTO_LEN, align 4
  %30 = call i32 @banout_append(%struct.BannerOutput* %27, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %52

31:                                               ; preds = %3
  %32 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %33 = load i32, i32* @PROTO_SSL3, align 4
  %34 = load i32, i32* @AUTO_LEN, align 4
  %35 = call i32 @banout_append(%struct.BannerOutput* %32, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %52

36:                                               ; preds = %3
  %37 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %38 = load i32, i32* @PROTO_SSL3, align 4
  %39 = load i32, i32* @AUTO_LEN, align 4
  %40 = call i32 @banout_append(%struct.BannerOutput* %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  br label %52

41:                                               ; preds = %3
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sprintf_s(i8* %42, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.BannerOutput*, %struct.BannerOutput** %4, align 8
  %47 = load i32, i32* @PROTO_SSL3, align 4
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @banout_append(%struct.BannerOutput* %46, i32 %47, i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %41, %36, %31, %26, %21, %12
  ret void
}

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
