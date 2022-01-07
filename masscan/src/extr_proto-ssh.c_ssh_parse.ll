; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssh.c_ssh_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssh.c_ssh_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@PROTO_SSH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @ssh_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssh_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %17 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %18 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @UNUSEDPARM(i8* %20)
  %22 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %23 = bitcast %struct.Banner1* %22 to i8*
  %24 = call i32 @UNUSEDPARM(i8* %23)
  %25 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %26 = bitcast %struct.InteractiveData* %25 to i8*
  %27 = call i32 @UNUSEDPARM(i8* %26)
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %87, %7
  %29 = load i32, i32* %16, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  switch i32 %34, label %83 [
    i32 0, label %35
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %16, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %87

44:                                               ; preds = %35
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %68, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* %16, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @isprint(i8 zeroext %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %60, %52, %44
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %72 = bitcast %struct.InteractiveData* %71 to i8*
  %73 = call i32 @tcp_close(i8* %72)
  br label %87

74:                                               ; preds = %60
  %75 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %76 = load i32, i32* @PROTO_SSH2, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %16, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @banout_append_char(%struct.BannerOutput* %75, i32 %76, i8 zeroext %81)
  br label %86

83:                                               ; preds = %33
  %84 = load i64, i64* %12, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %83, %74
  br label %87

87:                                               ; preds = %86, %68, %43
  %88 = load i32, i32* %16, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %28

90:                                               ; preds = %28
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %93 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local i32 @tcp_close(i8*) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
