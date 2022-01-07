; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pgp_parse_pkt_hdr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_pgp_parse_pkt_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"pgp_parse_pkt_hdr: not pkt hdr\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@PKT_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_parse_pkt_hdr(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @pullf_read(i32* %13, i32 1, i32** %12)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %72

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %72

23:                                               ; preds = %19
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @px_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %30, i32* %5, align 4
  br label %72

31:                                               ; preds = %23
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 63
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @parse_new_len(i32* %41, i32* %42)
  store i32 %43, i32* %11, align 4
  br label %70

44:                                               ; preds = %31
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 15
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @PKT_CONTEXT, align 4
  br label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %11, align 4
  br label %69

64:                                               ; preds = %44
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @parse_old_len(i32* %65, i32* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %64, %62
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %28, %22, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @pullf_read(i32*, i32, i32**) #1

declare dso_local i32 @px_debug(i8*) #1

declare dso_local i32 @parse_new_len(i32*, i32*) #1

declare dso_local i32 @parse_old_len(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
