; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_memp.c_memp_free.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/extr_memp.c_memp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memp = type { %struct.memp* }

@old_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"memp_free: mem properly aligned\00", align 1
@MEM_ALIGNMENT = common dso_local global i32 0, align 4
@MEMP_SIZE = common dso_local global i32* null, align 8
@used = common dso_local global i32 0, align 4
@memp_tab = common dso_local global %struct.memp** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memp_free(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.memp*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @old_level, align 4
  %7 = call i32 @SYS_ARCH_DECL_PROTECT(i32 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %45

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = load i32, i32* @MEM_ALIGNMENT, align 4
  %15 = srem i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32*, i32** @MEMP_SIZE, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.memp*
  store %struct.memp* %27, %struct.memp** %5, align 8
  %28 = load i32, i32* @old_level, align 4
  %29 = call i32 @SYS_ARCH_PROTECT(i32 %28)
  %30 = load i32, i32* @used, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @MEMP_STATS_DEC(i32 %30, i64 %31)
  %33 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.memp*, %struct.memp** %33, i64 %34
  %36 = load %struct.memp*, %struct.memp** %35, align 8
  %37 = load %struct.memp*, %struct.memp** %5, align 8
  %38 = getelementptr inbounds %struct.memp, %struct.memp* %37, i32 0, i32 0
  store %struct.memp* %36, %struct.memp** %38, align 8
  %39 = load %struct.memp*, %struct.memp** %5, align 8
  %40 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.memp*, %struct.memp** %40, i64 %41
  store %struct.memp* %39, %struct.memp** %42, align 8
  %43 = load i32, i32* @old_level, align 4
  %44 = call i32 @SYS_ARCH_UNPROTECT(i32 %43)
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @SYS_ARCH_DECL_PROTECT(i32) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @SYS_ARCH_PROTECT(i32) #1

declare dso_local i32 @MEMP_STATS_DEC(i32, i64) #1

declare dso_local i32 @SYS_ARCH_UNPROTECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
