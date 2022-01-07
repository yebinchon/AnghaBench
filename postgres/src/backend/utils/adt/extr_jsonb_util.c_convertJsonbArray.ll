; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_convertJsonbArray.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_convertJsonbArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__*, i64 }

@JB_FARRAY = common dso_local global i32 0, align 4
@JB_FSCALAR = common dso_local global i32 0, align 4
@JENTRY_OFFLENMASK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"total size of jsonb array elements exceeds the maximum of %u bytes\00", align 1
@JB_OFFSET_STRIDE = common dso_local global i32 0, align 4
@JENTRY_TYPEMASK = common dso_local global i32 0, align 4
@JENTRY_HAS_OFF = common dso_local global i32 0, align 4
@JENTRY_ISCONTAINER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32)* @convertJsonbArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertJsonbArray(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = call i32 @padBufferToInt(%struct.TYPE_15__* %26)
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @JB_FARRAY, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %4
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* @JB_FSCALAR, align 4
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %37, %4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = bitcast i32* %13 to i8*
  %52 = call i32 @appendToBuffer(%struct.TYPE_15__* %50, i8* %51, i32 4)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @reserveFromBuffer(%struct.TYPE_15__* %53, i32 %57)
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %114, %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %117

63:                                               ; preds = %59
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %15, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @convertJsonbValue(%struct.TYPE_15__* %72, i32* %17, %struct.TYPE_16__* %73, i32 %75)
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @JBE_OFFLENFLD(i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %63
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = call i32 @ereport(i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %63
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @JB_OFFSET_STRIDE, align 4
  %95 = srem i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @JENTRY_TYPEMASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @JENTRY_HAS_OFF, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %97, %92
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = bitcast i32* %17 to i8*
  %109 = call i32 @copyToBuffer(%struct.TYPE_15__* %106, i32 %107, i8* %108, i32 4)
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 4
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %59

117:                                              ; preds = %59
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32, i32* @ERROR, align 4
  %128 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %129 = call i32 @errcode(i32 %128)
  %130 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = call i32 @ereport(i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %126, %117
  %134 = load i32, i32* @JENTRY_ISCONTAINER, align 4
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %134, %135
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  ret void
}

declare dso_local i32 @padBufferToInt(%struct.TYPE_15__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendToBuffer(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @reserveFromBuffer(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @convertJsonbValue(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @JBE_OFFLENFLD(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @copyToBuffer(%struct.TYPE_15__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
