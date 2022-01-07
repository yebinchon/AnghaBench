; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubenc.c_pgp_write_pubenc_sesskey.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubenc.c_pgp_write_pubenc_sesskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"no pubkey?\0A\00", align 1
@PXE_BUG = common dso_local global i32 0, align 4
@PGP_PKT_PUBENCRYPTED_SESSKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_write_pubenc_sesskey(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %7, align 8
  store i32 3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @px_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @PXE_BUG, align 4
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @PGP_PKT_PUBENCRYPTED_SESSKEY, align 4
  %25 = call i32 @pgp_create_pkt_writer(i32* %23, i32 %24, i32** %9)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %69

29:                                               ; preds = %19
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @pushf_write(i32* %30, i32* %8, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %69

35:                                               ; preds = %29
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @pushf_write(i32* %36, i32* %39, i32 8)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %69

44:                                               ; preds = %35
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @pushf_write(i32* %45, i32* %10, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %69

50:                                               ; preds = %44
  %51 = load i32, i32* %10, align 4
  switch i32 %51, label %62 [
    i32 130, label %52
    i32 129, label %57
    i32 128, label %57
  ]

52:                                               ; preds = %50
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @encrypt_and_write_elgamal(%struct.TYPE_9__* %53, %struct.TYPE_8__* %54, i32* %55)
  store i32 %56, i32* %6, align 4
  br label %62

57:                                               ; preds = %50, %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @encrypt_and_write_rsa(%struct.TYPE_9__* %58, %struct.TYPE_8__* %59, i32* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %50, %57, %52
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %69

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @pushf_flush(i32* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %65, %49, %43, %34, %28
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @pushf_free(i32* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @px_debug(i8*) #1

declare dso_local i32 @pgp_create_pkt_writer(i32*, i32, i32**) #1

declare dso_local i32 @pushf_write(i32*, i32*, i32) #1

declare dso_local i32 @encrypt_and_write_elgamal(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @encrypt_and_write_rsa(%struct.TYPE_9__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @pushf_flush(i32*) #1

declare dso_local i32 @pushf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
