; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-vnc.c_vnc_append_sectype.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-vnc.c_vnc_append_sectype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

@PROTO_VNC_RFB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"VNC-chap\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"RA2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RA2ne\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SSPI\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SSPIne\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Tight\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Ultra\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"VeNCrypt\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"GTK-VNC-SASL\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Colin-Dean-xvp\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Apple30\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Apple35\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BannerOutput*, i32)* @vnc_append_sectype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnc_append_sectype(%struct.BannerOutput* %0, i32 %1) #0 {
  %3 = alloca %struct.BannerOutput*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  store %struct.BannerOutput* %0, %struct.BannerOutput** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %87 [
    i32 0, label %7
    i32 1, label %12
    i32 2, label %17
    i32 5, label %22
    i32 6, label %27
    i32 7, label %32
    i32 8, label %37
    i32 16, label %42
    i32 17, label %47
    i32 18, label %52
    i32 19, label %57
    i32 20, label %62
    i32 21, label %67
    i32 22, label %72
    i32 30, label %77
    i32 35, label %82
  ]

7:                                                ; preds = %2
  %8 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %9 = load i32, i32* @PROTO_VNC_RFB, align 4
  %10 = load i32, i32* @AUTO_LEN, align 4
  %11 = call i32 @banout_append(%struct.BannerOutput* %8, i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %96

12:                                               ; preds = %2
  %13 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %14 = load i32, i32* @PROTO_VNC_RFB, align 4
  %15 = load i32, i32* @AUTO_LEN, align 4
  %16 = call i32 @banout_append(%struct.BannerOutput* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %19 = load i32, i32* @PROTO_VNC_RFB, align 4
  %20 = load i32, i32* @AUTO_LEN, align 4
  %21 = call i32 @banout_append(%struct.BannerOutput* %18, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %96

22:                                               ; preds = %2
  %23 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %24 = load i32, i32* @PROTO_VNC_RFB, align 4
  %25 = load i32, i32* @AUTO_LEN, align 4
  %26 = call i32 @banout_append(%struct.BannerOutput* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  br label %96

27:                                               ; preds = %2
  %28 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %29 = load i32, i32* @PROTO_VNC_RFB, align 4
  %30 = load i32, i32* @AUTO_LEN, align 4
  %31 = call i32 @banout_append(%struct.BannerOutput* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  br label %96

32:                                               ; preds = %2
  %33 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %34 = load i32, i32* @PROTO_VNC_RFB, align 4
  %35 = load i32, i32* @AUTO_LEN, align 4
  %36 = call i32 @banout_append(%struct.BannerOutput* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  br label %96

37:                                               ; preds = %2
  %38 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %39 = load i32, i32* @PROTO_VNC_RFB, align 4
  %40 = load i32, i32* @AUTO_LEN, align 4
  %41 = call i32 @banout_append(%struct.BannerOutput* %38, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  br label %96

42:                                               ; preds = %2
  %43 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %44 = load i32, i32* @PROTO_VNC_RFB, align 4
  %45 = load i32, i32* @AUTO_LEN, align 4
  %46 = call i32 @banout_append(%struct.BannerOutput* %43, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %45)
  br label %96

47:                                               ; preds = %2
  %48 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %49 = load i32, i32* @PROTO_VNC_RFB, align 4
  %50 = load i32, i32* @AUTO_LEN, align 4
  %51 = call i32 @banout_append(%struct.BannerOutput* %48, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %50)
  br label %96

52:                                               ; preds = %2
  %53 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %54 = load i32, i32* @PROTO_VNC_RFB, align 4
  %55 = load i32, i32* @AUTO_LEN, align 4
  %56 = call i32 @banout_append(%struct.BannerOutput* %53, i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %55)
  br label %96

57:                                               ; preds = %2
  %58 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %59 = load i32, i32* @PROTO_VNC_RFB, align 4
  %60 = load i32, i32* @AUTO_LEN, align 4
  %61 = call i32 @banout_append(%struct.BannerOutput* %58, i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %60)
  br label %96

62:                                               ; preds = %2
  %63 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %64 = load i32, i32* @PROTO_VNC_RFB, align 4
  %65 = load i32, i32* @AUTO_LEN, align 4
  %66 = call i32 @banout_append(%struct.BannerOutput* %63, i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %65)
  br label %96

67:                                               ; preds = %2
  %68 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %69 = load i32, i32* @PROTO_VNC_RFB, align 4
  %70 = load i32, i32* @AUTO_LEN, align 4
  %71 = call i32 @banout_append(%struct.BannerOutput* %68, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %70)
  br label %96

72:                                               ; preds = %2
  %73 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %74 = load i32, i32* @PROTO_VNC_RFB, align 4
  %75 = load i32, i32* @AUTO_LEN, align 4
  %76 = call i32 @banout_append(%struct.BannerOutput* %73, i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %75)
  br label %96

77:                                               ; preds = %2
  %78 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %79 = load i32, i32* @PROTO_VNC_RFB, align 4
  %80 = load i32, i32* @AUTO_LEN, align 4
  %81 = call i32 @banout_append(%struct.BannerOutput* %78, i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %80)
  br label %96

82:                                               ; preds = %2
  %83 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %84 = load i32, i32* @PROTO_VNC_RFB, align 4
  %85 = load i32, i32* @AUTO_LEN, align 4
  %86 = call i32 @banout_append(%struct.BannerOutput* %83, i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %85)
  br label %96

87:                                               ; preds = %2
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @sprintf_s(i8* %88, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %89)
  %91 = load %struct.BannerOutput*, %struct.BannerOutput** %3, align 8
  %92 = load i32, i32* @PROTO_VNC_RFB, align 4
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %94 = load i32, i32* @AUTO_LEN, align 4
  %95 = call i32 @banout_append(%struct.BannerOutput* %91, i32 %92, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  ret void
}

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
