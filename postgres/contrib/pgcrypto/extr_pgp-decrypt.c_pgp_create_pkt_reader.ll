; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pgp_create_pkt_reader.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pgp_create_pkt_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PktData = type { i32, i32 }

@pktreader_filter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_create_pkt_reader(i32** %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PktData*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = call %struct.PktData* @px_alloc(i32 8)
  store %struct.PktData* %13, %struct.PktData** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.PktData*, %struct.PktData** %12, align 8
  %16 = getelementptr inbounds %struct.PktData, %struct.PktData* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.PktData*, %struct.PktData** %12, align 8
  %19 = getelementptr inbounds %struct.PktData, %struct.PktData* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32**, i32*** %6, align 8
  %21 = load %struct.PktData*, %struct.PktData** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @pullf_create(i32** %20, i32* @pktreader_filter, %struct.PktData* %21, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.PktData*, %struct.PktData** %12, align 8
  %28 = call i32 @px_free(%struct.PktData* %27)
  br label %29

29:                                               ; preds = %26, %5
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local %struct.PktData* @px_alloc(i32) #1

declare dso_local i32 @pullf_create(i32**, i32*, %struct.PktData*, i32*) #1

declare dso_local i32 @px_free(%struct.PktData*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
