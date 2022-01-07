; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdwriteback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdwriteback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EXTENSION_RETURN_NULL = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i64 0, align 8
@WAIT_EVENT_DATA_FILE_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdwriteback(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %14

14:                                               ; preds = %46, %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EXTENSION_RETURN_NULL, align 4
  %23 = call %struct.TYPE_3__* @_mdfd_getseg(i32 %19, i32 %20, i32 %21, i32 1, i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %11, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %78

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RELSEG_SIZE, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @RELSEG_SIZE, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @RELSEG_SIZE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RELSEG_SIZE, align 4
  %44 = srem i32 %42, %43
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %27
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i64, i64* @BLCKSZ, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RELSEG_SIZE, align 4
  %60 = srem i32 %58, %59
  %61 = mul nsw i32 %57, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i64, i64* @BLCKSZ, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* @WAIT_EVENT_DATA_FILE_FLUSH, align 4
  %71 = call i32 @FileWriteback(i32 %64, i32 %65, i32 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %14

78:                                               ; preds = %26, %14
  ret void
}

declare dso_local %struct.TYPE_3__* @_mdfd_getseg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileWriteback(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
