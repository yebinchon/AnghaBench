; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_init_litdata_packet.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_init_litdata_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@PGP_PKT_LITERAL_DATA = common dso_local global i32 0, align 4
@pkt_stream_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*, i32*)* @init_litdata_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_litdata_packet(i32** %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 117, i32 116
  store i32 %24, i32* %13, align 4
  br label %26

25:                                               ; preds = %3
  store i32 98, i32* %13, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = call i64 @time(i32* null)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  store i32 6, i32* %9, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @PGP_PKT_LITERAL_DATA, align 4
  %49 = call i32 @write_tag_only(i32* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %26
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %26
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @pushf_create(i32** %12, i32* @pkt_stream_filter, %struct.TYPE_4__* %55, i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %76

62:                                               ; preds = %54
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @pushf_write(i32* %63, i32* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @pushf_free(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %62
  %74 = load i32*, i32** %12, align 8
  %75 = load i32**, i32*** %5, align 8
  store i32* %74, i32** %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %69, %60, %52
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @write_tag_only(i32*, i32) #1

declare dso_local i32 @pushf_create(i32**, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @pushf_write(i32*, i32*, i32) #1

declare dso_local i32 @pushf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
