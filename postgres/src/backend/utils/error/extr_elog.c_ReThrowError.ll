; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_ReThrowError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_ReThrowError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ERROR = common dso_local global i64 0, align 8
@recursion_depth = common dso_local global i32 0, align 4
@ErrorContext = common dso_local global i32 0, align 4
@errordata_stack_depth = common dso_local global i64 0, align 8
@ERRORDATA_STACK_SIZE = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ERRORDATA_STACK_SIZE exceeded\00", align 1
@errordata = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReThrowError(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ERROR, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load i32, i32* @recursion_depth, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @recursion_depth, align 4
  %13 = load i32, i32* @ErrorContext, align 4
  %14 = call i32 @MemoryContextSwitchTo(i32 %13)
  %15 = load i64, i64* @errordata_stack_depth, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* @errordata_stack_depth, align 8
  %17 = load i64, i64* @ERRORDATA_STACK_SIZE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  store i64 -1, i64* @errordata_stack_depth, align 8
  %20 = load i32, i32* @PANIC, align 4
  %21 = call i32 @errmsg_internal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @ereport(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @errordata, align 8
  %25 = load i64, i64* @errordata_stack_depth, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = call i32 @memcpy(%struct.TYPE_6__* %27, %struct.TYPE_6__* %28, i32 112)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 13
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 13
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @pstrdup(i8* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 13
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %34, %23
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 12
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 12
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @pstrdup(i8* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 12
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 11
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 11
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @pstrdup(i8* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 11
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 10
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 10
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @pstrdup(i8* %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 10
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 9
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @pstrdup(i8* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 9
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @pstrdup(i8* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 8
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %89
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 7
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 7
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @pstrdup(i8* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @pstrdup(i8* %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %118, %113
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @pstrdup(i8* %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @pstrdup(i8* %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %142, %137
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @pstrdup(i8* %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %154, %149
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @pstrdup(i8* %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %166, %161
  %174 = load i32, i32* @ErrorContext, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @recursion_depth, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* @recursion_depth, align 4
  %179 = call i32 (...) @PG_RE_THROW()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @PG_RE_THROW(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
