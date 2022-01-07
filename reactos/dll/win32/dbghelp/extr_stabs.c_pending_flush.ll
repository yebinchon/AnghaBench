; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_pending_flush.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_pending_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_list = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.module = type { i32 }
%struct.symt_function = type { i64 }
%struct.symt_block = type { i32 }

@DMT_MACHO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown pending object tag %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_list*, %struct.module*, %struct.symt_function*, %struct.symt_block*)* @pending_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pending_flush(%struct.pending_list* %0, %struct.module* %1, %struct.symt_function* %2, %struct.symt_block* %3) #0 {
  %5 = alloca %struct.pending_list*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.symt_function*, align 8
  %8 = alloca %struct.symt_block*, align 8
  %9 = alloca i32, align 4
  store %struct.pending_list* %0, %struct.pending_list** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store %struct.symt_function* %2, %struct.symt_function** %7, align 8
  store %struct.symt_block* %3, %struct.symt_block** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %146, %4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %13 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %149

16:                                               ; preds = %10
  %17 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %18 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %135 [
    i32 128, label %25
    i32 129, label %69
  ]

25:                                               ; preds = %16
  %26 = load %struct.module*, %struct.module** %6, align 8
  %27 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %28 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %29 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %39 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load %struct.symt_block*, %struct.symt_block** %8, align 8
  %48 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %49 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %59 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @symt_add_func_local(%struct.module* %26, %struct.symt_function* %27, i32 %37, i32* %46, %struct.symt_block* %47, i32 %57, i32 %67)
  br label %145

69:                                               ; preds = %16
  %70 = load %struct.module*, %struct.module** %6, align 8
  %71 = getelementptr inbounds %struct.module, %struct.module* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DMT_MACHO, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %69
  %76 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %77 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %80 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %78, %88
  %90 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %91 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, %89
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %75, %69
  %102 = load %struct.module*, %struct.module** %6, align 8
  %103 = load %struct.symt_function*, %struct.symt_function** %7, align 8
  %104 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %105 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %115 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %125 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @symt_add_func_line(%struct.module* %102, %struct.symt_function* %103, i32 %113, i32 %123, i64 %133)
  br label %145

135:                                              ; preds = %16
  %136 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %137 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %135, %101, %25
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %10

149:                                              ; preds = %10
  %150 = load %struct.pending_list*, %struct.pending_list** %5, align 8
  %151 = getelementptr inbounds %struct.pending_list, %struct.pending_list* %150, i32 0, i32 0
  store i32 0, i32* %151, align 8
  ret void
}

declare dso_local i32 @symt_add_func_local(%struct.module*, %struct.symt_function*, i32, i32*, %struct.symt_block*, i32, i32) #1

declare dso_local i32 @symt_add_func_line(%struct.module*, %struct.symt_function*, i32, i32, i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
