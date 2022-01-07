; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_cleanup_using_control_segment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_cleanup_using_control_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@DSM_OP_ATTACH = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@DSM_OP_DETACH = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"cleaning up orphaned dynamic shared memory with ID %u (reference count %u)\00", align 1
@DSM_OP_DESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"cleaning up dynamic shared memory control segment with ID %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsm_cleanup_using_control_segment(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @DSM_OP_ATTACH, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DEBUG1, align 4
  %17 = call i32 @dsm_impl_op(i32 %14, i32 %15, i32 0, i8** %5, i8** %3, i32* %7, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %78

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %11, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dsm_control_segment_sane(%struct.TYPE_5__* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @DSM_OP_DETACH, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @LOG, align 4
  %31 = call i32 @dsm_impl_op(i32 %28, i32 %29, i32 0, i8** %5, i8** %3, i32* %7, i32 %30)
  br label %78

32:                                               ; preds = %20
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %67, %32
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %67

51:                                               ; preds = %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @DEBUG2, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i64, i64* %13, align 8
  %62 = call i32 (i32, i8*, i32, ...) @elog(i32 %59, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %61)
  %63 = load i32, i32* @DSM_OP_DESTROY, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @LOG, align 4
  %66 = call i32 @dsm_impl_op(i32 %63, i32 %64, i32 0, i8** %6, i8** %4, i32* %8, i32 %65)
  br label %67

67:                                               ; preds = %51, %50
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %36

70:                                               ; preds = %36
  %71 = load i32, i32* @DEBUG2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = call i32 (i32, i8*, i32, ...) @elog(i32 %71, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @DSM_OP_DESTROY, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @LOG, align 4
  %77 = call i32 @dsm_impl_op(i32 %74, i32 %75, i32 0, i8** %5, i8** %3, i32* %7, i32 %76)
  br label %78

78:                                               ; preds = %70, %27, %19
  ret void
}

declare dso_local i32 @dsm_impl_op(i32, i32, i32, i8**, i8**, i32*, i32) #1

declare dso_local i32 @dsm_control_segment_sane(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
