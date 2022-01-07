; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_bootmgr_verify.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_bootmgr_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FS_MODE_OPEN_READ = common dso_local global i32 0, align 4
@BOOTMGR_HASH_SIZE = common dso_local global i32 0, align 4
@BOOTMGR_HASH_ALGO = common dso_local global i32 0, align 4
@BOOTMGR_BUFF_SIZE = common dso_local global i64 0, align 8
@bootmgr_file_buf = common dso_local global i32* null, align 8
@bootmgr_hash_buf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bootmgr_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bootmgr_verify(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @FS_MODE_OPEN_READ, align 4
  %11 = call i64 @sl_FsOpen(i32* %9, i32 %10, i32* null, i32* %7)
  %12 = icmp eq i64 0, %11
  br i1 %12, label %13, label %109

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @sl_FsGetInfo(i32* %14, i32 0, %struct.TYPE_3__* %4)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BOOTMGR_HASH_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %13
  %21 = load i32, i32* @BOOTMGR_HASH_SIZE, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @BOOTMGR_HASH_ALGO, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CRYPTOHASH_SHAMD5Start(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %57, %20
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* @BOOTMGR_BUFF_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @BOOTMGR_BUFF_SIZE, align 8
  store i64 %38, i64* %5, align 8
  br label %45

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i32*, i32** @bootmgr_file_buf, align 8
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @sl_FsRead(i32 %46, i64 %47, i32* %48, i32 %50)
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i32*, i32** @bootmgr_file_buf, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @CRYPTOHASH_SHAMD5Update(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %29, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** @bootmgr_file_buf, align 8
  %65 = call i32 @CRYPTOHASH_SHAMD5Read(i32* %64)
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %83, %63
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* @BOOTMGR_HASH_SIZE, align 4
  %69 = sdiv i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i32*, i32** @bootmgr_hash_buf, align 8
  %74 = load i64, i64* %8, align 8
  %75 = mul nsw i64 %74, 2
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = bitcast i32* %76 to i8*
  %78 = load i32*, i32** @bootmgr_file_buf, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snprintf(i8* %77, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %72
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %66

86:                                               ; preds = %66
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %6, align 8
  %89 = load i32*, i32** @bootmgr_file_buf, align 8
  %90 = load i32, i32* @BOOTMGR_HASH_SIZE, align 4
  %91 = call i64 @sl_FsRead(i32 %87, i64 %88, i32* %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @sl_FsClose(i32 %92, i32* null, i32* null, i32 0)
  %94 = load i32*, i32** @bootmgr_file_buf, align 8
  %95 = load i32, i32* @BOOTMGR_HASH_SIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** @bootmgr_hash_buf, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = load i32*, i32** @bootmgr_file_buf, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = call i32 @strcmp(i8* %99, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %86
  store i32 1, i32* %2, align 4
  br label %110

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105, %13
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @sl_FsClose(i32 %107, i32* null, i32* null, i32 0)
  br label %109

109:                                              ; preds = %106, %1
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %104
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @sl_FsOpen(i32*, i32, i32*, i32*) #1

declare dso_local i32 @sl_FsGetInfo(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @CRYPTOHASH_SHAMD5Start(i32, i32) #1

declare dso_local i64 @sl_FsRead(i32, i64, i32*, i32) #1

declare dso_local i32 @CRYPTOHASH_SHAMD5Update(i32*, i64) #1

declare dso_local i32 @CRYPTOHASH_SHAMD5Read(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sl_FsClose(i32, i32*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
