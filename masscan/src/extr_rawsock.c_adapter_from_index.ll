; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock.c_adapter_from_index.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock.c_adapter_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32**, i8*)*, i8* (i32*)*, i32* (i32*)* }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@PCAP = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ERR:libpcap: no adapters found, are you sure you are root?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @adapter_from_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @adapter_from_index(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32 (i32**, i8*)*, i32 (i32**, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PCAP, i32 0, i32 0), align 8
  %15 = call i32 %14(i32** %4, i8* %13)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %38, %24
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, -1
  store i32 %31, i32* %3, align 4
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8* (i32*)*, i8* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PCAP, i32 0, i32 1), align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i8* %34(i32* %35)
  store i8* %36, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %44

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32* (i32*)*, i32* (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PCAP, i32 0, i32 2), align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* %39(i32* %40)
  store i32* %41, i32** %8, align 8
  br label %26

42:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %44

43:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42, %33
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
