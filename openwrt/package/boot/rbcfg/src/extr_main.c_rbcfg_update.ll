; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_update.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_rbcfg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_ctx = type { i32, i8*, i8*, i64 }

@rbcfg_ctx = common dso_local global %struct.rbcfg_ctx* null, align 8
@RB_MAGIC_SOFT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to open %s for writing\0A\00", align 1
@RB_ERR_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rbcfg_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbcfg_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** @rbcfg_ctx, align 8
  store %struct.rbcfg_ctx* %8, %struct.rbcfg_ctx** %3, align 8
  %9 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @RB_MAGIC_SOFT, align 4
  %13 = call i32 @put_u32(i64 %11, i32 %12)
  %14 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 4
  %18 = call i32 @put_u32(i64 %17, i32 0)
  %19 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cyg_ether_crc32(i8* %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @put_u32(i64 %30, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i8* [ %38, %35 ], [ %42, %39 ]
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @O_WRONLY, align 4
  %47 = load i32, i32* @O_CREAT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @open(i8* %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @RB_ERR_IO, align 4
  store i32 %56, i32* %7, align 4
  br label %79

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @write(i32 %58, i64 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* @RB_ERR_IO, align 4
  store i32 %72, i32* %7, align 4
  br label %76

73:                                               ; preds = %57
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @fsync(i32 %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %71
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

79:                                               ; preds = %76, %52
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @put_u32(i64, i32) #1

declare dso_local i32 @cyg_ether_crc32(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
