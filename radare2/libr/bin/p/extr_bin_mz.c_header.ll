; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mz.c_header.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mz.c_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.r_bin_mz_obj_t = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"[0000:0000]  Signature           %c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"[0000:0002]  BytesInLastBlock    0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[0000:0004]  BlocksInFile        0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"[0000:0006]  NumRelocs           0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"[0000:0008]  HeaderParagraphs    0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"[0000:000a]  MinExtraParagraphs  0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"[0000:000c]  MaxExtraParagraphs  0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"[0000:000e]  InitialSs           0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"[0000:0010]  InitialSp           0x%04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"[0000:0012]  Checksum            0x%04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"[0000:0014]  InitialIp           0x%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"[0000:0016]  InitialCs           0x%04x\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"[0000:0018]  RelocTableOffset    0x%04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"[0000:001a]  OverlayNumber       0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @header(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.r_bin_mz_obj_t*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.r_bin_mz_obj_t*
  store %struct.r_bin_mz_obj_t* %9, %struct.r_bin_mz_obj_t** %3, align 8
  %10 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %11 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 255
  %16 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %17 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21)
  %23 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %24 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %30 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %36 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %42 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %48 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %54 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %60 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %66 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %72 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %78 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %81)
  %83 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %84 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %87)
  %89 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %90 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %93)
  %95 = load %struct.r_bin_mz_obj_t*, %struct.r_bin_mz_obj_t** %3, align 8
  %96 = getelementptr inbounds %struct.r_bin_mz_obj_t, %struct.r_bin_mz_obj_t* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %99)
  ret void
}

declare dso_local i32 @eprintf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
