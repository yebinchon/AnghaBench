; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_new_len.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_parse_new_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKT_NORMAL = common dso_local global i32 0, align 4
@PKT_STREAM = common dso_local global i32 0, align 4
@MAX_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"parse_new_len: weird length\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @parse_new_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_new_len(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @PKT_NORMAL, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @GETBYTE(i32* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 191
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %7, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 192
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 223
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %24, 192
  %26 = shl i32 %25, 8
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GETBYTE(i32* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 192, %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %69

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @GETBYTE(i32* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @GETBYTE(i32* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @GETBYTE(i32* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @GETBYTE(i32* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %68

63:                                               ; preds = %34
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 31
  %66 = shl i32 1, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @PKT_STREAM, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %63, %37
  br label %69

69:                                               ; preds = %68, %23
  br label %70

70:                                               ; preds = %69, %15
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @MAX_CHUNK, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %70
  %78 = call i32 @px_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @px_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
