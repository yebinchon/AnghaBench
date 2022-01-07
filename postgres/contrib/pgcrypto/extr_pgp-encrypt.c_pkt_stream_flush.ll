; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_pkt_stream_flush.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_pkt_stream_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PktStreamStat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @pkt_stream_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_stream_flush(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca %struct.PktStreamStat*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32* %10, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.PktStreamStat*
  store %struct.PktStreamStat* %12, %struct.PktStreamStat** %9, align 8
  %13 = load %struct.PktStreamStat*, %struct.PktStreamStat** %9, align 8
  %14 = getelementptr inbounds %struct.PktStreamStat, %struct.PktStreamStat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @render_newlen(i32* %18, i32 0)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 @pushf_write(i32* %20, i32* %21, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %17
  %35 = load %struct.PktStreamStat*, %struct.PktStreamStat** %9, align 8
  %36 = getelementptr inbounds %struct.PktStreamStat, %struct.PktStreamStat* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32* @render_newlen(i32*, i32) #1

declare dso_local i32 @pushf_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
