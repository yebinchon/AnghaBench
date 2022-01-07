; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_percentdone.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_pcapfile_percentdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PcapFile = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcapfile_percentdone(%struct.PcapFile* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PcapFile*, align 8
  %5 = alloca i32*, align 8
  store %struct.PcapFile* %0, %struct.PcapFile** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.PcapFile*, %struct.PcapFile** %4, align 8
  %10 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.PcapFile*, %struct.PcapFile** %4, align 8
  %15 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 100, i32* %3, align 4
  br label %28

19:                                               ; preds = %13
  %20 = load %struct.PcapFile*, %struct.PcapFile** %4, align 8
  %21 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 100
  %24 = load %struct.PcapFile*, %struct.PcapFile** %4, align 8
  %25 = getelementptr inbounds %struct.PcapFile, %struct.PcapFile* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
