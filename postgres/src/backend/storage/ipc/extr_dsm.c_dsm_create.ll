; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_dsm.c_dsm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32, i32* }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32*, i32*, i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@dsm_init_done = common dso_local global i32 0, align 4
@DSM_HANDLE_INVALID = common dso_local global i64 0, align 8
@DSM_OP_CREATE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@DynamicSharedMemoryControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@dsm_control = common dso_local global %struct.TYPE_10__* null, align 8
@DSM_CREATE_NULL_IF_MAXSEGMENTS = common dso_local global i32 0, align 4
@DSM_OP_DESTROY = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"too many dynamic shared memory segments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @dsm_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @IsUnderPostmaster, align 4
  %10 = call i32 @Assert(i32 %9)
  %11 = load i32, i32* @dsm_init_done, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @dsm_backend_startup()
  br label %15

15:                                               ; preds = %13, %2
  %16 = call %struct.TYPE_9__* (...) @dsm_create_descriptor()
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  br label %17

17:                                               ; preds = %56, %39, %15
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = call i64 (...) @random()
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DSM_HANDLE_INVALID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %17

40:                                               ; preds = %27
  %41 = load i32, i32* @DSM_OP_CREATE, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i64 @dsm_impl_op(i32 %41, i64 %44, i32 %45, i32* %47, i32** %49, i64* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %57

56:                                               ; preds = %40
  br label %17

57:                                               ; preds = %55
  %58 = load i32, i32* @DynamicSharedMemoryControlLock, align 4
  %59 = load i32, i32* @LW_EXCLUSIVE, align 4
  %60 = call i32 @LWLockAcquire(i32 %58, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %112, %57
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %68
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i64 %80, i64* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 2, i32* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* @DynamicSharedMemoryControlLock, align 4
  %109 = call i32 @LWLockRelease(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %3, align 8
  br label %201

111:                                              ; preds = %68
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %7, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %7, align 8
  br label %64

115:                                              ; preds = %64
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp uge i64 %116, %119
  br i1 %120, label %121, label %163

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @DSM_CREATE_NULL_IF_MAXSEGMENTS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %121
  %127 = load i32, i32* @DynamicSharedMemoryControlLock, align 4
  %128 = call i32 @LWLockRelease(i32 %127)
  %129 = load i32, i32* @DSM_OP_DESTROY, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* @WARNING, align 4
  %140 = call i64 @dsm_impl_op(i32 %129, i64 %132, i32 0, i32* %134, i32** %136, i64* %138, i32 %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %126
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = call i32 @ResourceOwnerForgetDSM(i32* %148, %struct.TYPE_9__* %149)
  br label %151

151:                                              ; preds = %145, %126
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 3
  %154 = call i32 @dlist_delete(i32* %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = call i32 @pfree(%struct.TYPE_9__* %155)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %201

157:                                              ; preds = %121
  %158 = load i32, i32* @ERROR, align 4
  %159 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %160 = call i32 @errcode(i32 %159)
  %161 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %162 = call i32 @ereport(i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %157, %115
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i64 %166, i64* %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32 2, i32* %178, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i64, i64* %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i64, i64* %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  store i32 0, i32* %190, align 8
  %191 = load i64, i64* %8, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dsm_control, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load i32, i32* @DynamicSharedMemoryControlLock, align 4
  %199 = call i32 @LWLockRelease(i32 %198)
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %200, %struct.TYPE_9__** %3, align 8
  br label %201

201:                                              ; preds = %163, %151, %77
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %202
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @dsm_backend_startup(...) #1

declare dso_local %struct.TYPE_9__* @dsm_create_descriptor(...) #1

declare dso_local i64 @random(...) #1

declare dso_local i64 @dsm_impl_op(i32, i64, i32, i32*, i32**, i64*, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ResourceOwnerForgetDSM(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @dlist_delete(i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
