; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_InitializeLWLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_InitializeLWLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i32 }

@MainLWLockArray = common dso_local global %struct.TYPE_9__* null, align 8
@NUM_INDIVIDUAL_LWLOCKS = common dso_local global i32 0, align 4
@NUM_BUFFER_PARTITIONS = common dso_local global i32 0, align 4
@LWTRANCHE_BUFFER_MAPPING = common dso_local global i32 0, align 4
@NUM_LOCK_PARTITIONS = common dso_local global i32 0, align 4
@LWTRANCHE_LOCK_MANAGER = common dso_local global i32 0, align 4
@NUM_PREDICATELOCK_PARTITIONS = common dso_local global i32 0, align 4
@LWTRANCHE_PREDICATE_LOCK_MANAGER = common dso_local global i32 0, align 4
@NamedLWLockTrancheRequests = common dso_local global i32 0, align 4
@NUM_FIXED_LWLOCKS = common dso_local global i32 0, align 4
@NamedLWLockTrancheArray = common dso_local global %struct.TYPE_8__* null, align 8
@NamedLWLockTrancheRequestArray = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitializeLWLocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeLWLocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = call i32 (...) @NumLWLocksByNamedTranches()
  store i32 %10, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainLWLockArray, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  br label %12

12:                                               ; preds = %21, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @NUM_INDIVIDUAL_LWLOCKS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @LWLockInitialize(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 1
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %5, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainLWLockArray, align 8
  %28 = load i32, i32* @NUM_INDIVIDUAL_LWLOCKS, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %40, %26
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @NUM_BUFFER_PARTITIONS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* @LWTRANCHE_BUFFER_MAPPING, align 4
  %39 = call i32 @LWLockInitialize(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 1
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %5, align 8
  br label %31

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainLWLockArray, align 8
  %47 = load i32, i32* @NUM_INDIVIDUAL_LWLOCKS, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = load i32, i32* @NUM_BUFFER_PARTITIONS, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %62, %45
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* @LWTRANCHE_LOCK_MANAGER, align 4
  %61 = call i32 @LWLockInitialize(i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 1
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %5, align 8
  br label %53

67:                                               ; preds = %53
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainLWLockArray, align 8
  %69 = load i32, i32* @NUM_INDIVIDUAL_LWLOCKS, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  %72 = load i32, i32* @NUM_BUFFER_PARTITIONS, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %87, %67
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @NUM_PREDICATELOCK_PARTITIONS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* @LWTRANCHE_PREDICATE_LOCK_MANAGER, align 4
  %86 = call i32 @LWLockInitialize(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 1
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %5, align 8
  br label %78

92:                                               ; preds = %78
  %93 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %168

95:                                               ; preds = %92
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainLWLockArray, align 8
  %97 = load i32, i32* @NUM_FIXED_LWLOCKS, align 4
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %100
  %102 = bitcast %struct.TYPE_9__* %101 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** @NamedLWLockTrancheArray, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NamedLWLockTrancheArray, align 8
  %104 = bitcast %struct.TYPE_8__* %103 to i8*
  %105 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 16
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8* %108, i8** %6, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MainLWLockArray, align 8
  %110 = load i32, i32* @NUM_FIXED_LWLOCKS, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %164, %95
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %167

117:                                              ; preds = %113
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @NamedLWLockTrancheRequestArray, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %7, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NamedLWLockTrancheArray, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %124
  store %struct.TYPE_8__* %125, %struct.TYPE_8__** %8, align 8
  %126 = load i8*, i8** %6, align 8
  store i8* %126, i8** %9, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @strlen(i32 %129)
  %131 = add nsw i64 %130, 1
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 %131
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @strcpy(i8* %134, i32 %137)
  %139 = call i32 (...) @LWLockNewTrancheId()
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %158, %117
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @LWLockInitialize(i32* %153, i32 %156)
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 1
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %5, align 8
  br label %145

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %3, align 4
  br label %113

167:                                              ; preds = %113
  br label %168

168:                                              ; preds = %167, %92
  ret void
}

declare dso_local i32 @NumLWLocksByNamedTranches(...) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @LWLockNewTrancheId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
