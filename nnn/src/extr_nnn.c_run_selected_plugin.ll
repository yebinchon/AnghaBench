; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_run_selected_plugin.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_run_selected_plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@g_plinit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@g_pipepath = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@plugindir = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@F_NORMAL = common dso_local global i32 0, align 4
@g_buf = common dso_local global i8* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CTX_MAX = common dso_local global i32 0, align 4
@g_ctx = common dso_local global %struct.TYPE_8__* null, align 8
@dents = common dso_local global %struct.TYPE_9__* null, align 8
@cur = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*, i8*, i8**, i8**)* @run_selected_plugin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_selected_plugin(i8** %0, i8* %1, i8* %2, i8* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %18 = load i32, i32* @g_plinit, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = call i32 (...) @plctrl_init()
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* @g_plinit, align 4
  br label %23

23:                                               ; preds = %20, %6
  %24 = load i32, i32* @g_pipepath, align 4
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open(i32 %24, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %7, align 4
  br label %157

33:                                               ; preds = %23
  %34 = load i32, i32* @plugindir, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @mkpath(i32 %34, i8* %35, i8* %36)
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load i8**, i8*** %12, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @NAME_MAX, align 4
  %51 = call i32 @xstrlcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = load i8**, i8*** %12, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @F_NORMAL, align 4
  %60 = call i32 @spawn(i8* %52, i8* %54, i8* %56, i8* %58, i32 %59)
  br label %69

61:                                               ; preds = %40, %33
  %62 = load i8*, i8** %10, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @F_NORMAL, align 4
  %68 = call i32 @spawn(i8* %62, i8* null, i8* %64, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %46
  %70 = load i32, i32* %14, align 4
  %71 = load i8*, i8** @g_buf, align 8
  %72 = load i32, i32* @PATH_MAX, align 4
  %73 = call i64 @read(i32 %70, i8* %71, i32 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i8*, i8** @g_buf, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i64, i64* %15, align 8
  %80 = icmp ugt i64 %79, 1
  br i1 %80, label %81, label %155

81:                                               ; preds = %69
  %82 = load i8*, i8** @g_buf, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 %85, 48
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cfg, i32 0, i32 0), align 4
  %92 = add nsw i32 %91, 1
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %89, %81
  %95 = load i8**, i8*** %13, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %8, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @PATH_MAX, align 4
  %100 = call i32 @xstrlcpy(i8* %96, i8* %98, i32 %99)
  %101 = load i8**, i8*** %8, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** @g_buf, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i32, i32* @PATH_MAX, align 4
  %106 = call i32 @xstrlcpy(i8* %102, i8* %104, i32 %105)
  br label %154

107:                                              ; preds = %89
  %108 = load i32, i32* %16, align 4
  %109 = icmp sge i32 %108, 1
  br i1 %109, label %110, label %153

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @CTX_MAX, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %110
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_ctx, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i8*, i8** @g_buf, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dents, align 8
  %126 = load i64, i64* @cur, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @savecurctx(%struct.TYPE_7__* @cfg, i8* %124, i32 %129, i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_ctx, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %8, align 8
  store i8* %137, i8** %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_ctx, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %13, align 8
  store i8* %144, i8** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_ctx, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = load i8**, i8*** %12, align 8
  store i8* %151, i8** %152, align 8
  br label %153

153:                                              ; preds = %114, %110, %107
  br label %154

154:                                              ; preds = %153, %94
  br label %155

155:                                              ; preds = %154, %69
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %155, %31
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @plctrl_init(...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @mkpath(i32, i8*, i8*) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i32 @spawn(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @savecurctx(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
