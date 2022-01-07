; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_CreateHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_CreateHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i32 }

@WS_CHILD = common dso_local global i32 0, align 4
@HDS_HORZ = common dso_local global i32 0, align 4
@HDS_FULLDRAG = common dso_local global i32 0, align 4
@HDS_DRAGDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Creating header for list %p\0A\00", align 1
@LVS_NOSORTHEADER = common dso_local global i32 0, align 4
@HDS_BUTTONS = common dso_local global i32 0, align 4
@LVS_NOCOLUMNHEADER = common dso_local global i32 0, align 4
@HDS_HIDDEN = common dso_local global i32 0, align 4
@GWLP_HINSTANCE = common dso_local global i32 0, align 4
@WC_HEADERW = common dso_local global i32 0, align 4
@HDM_SETUNICODEFORMAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@HDM_SETIMAGELIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @LISTVIEW_CreateHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTVIEW_CreateHeader(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @WS_CHILD, align 4
  %7 = load i32, i32* @HDS_HORZ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @HDS_FULLDRAG, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HDS_DRAGDROP, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @LVS_NOSORTHEADER, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @HDS_BUTTONS, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @LVS_NOCOLUMNHEADER, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @HDS_HIDDEN, align 4
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GWLP_HINSTANCE, align 4
  %53 = call i64 @GetWindowLongPtrW(i32 %51, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i32, i32* @WC_HEADERW, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @CreateWindowW(i32 %54, i32* null, i32 %55, i32 0, i32 0, i32 0, i32 0, i32 %58, i32* null, i64 %59, i32* null)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %102

68:                                               ; preds = %45
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @HDM_SETUNICODEFORMAT, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @SendMessageW(i64 %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @WM_SETFONT, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @SendMessageW(i64 %77, i32 %78, i32 %82, i32 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %68
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @HDM_SETIMAGELIST, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @SendMessageW(i64 %92, i32 %93, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %89, %68
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = call i32 @LISTVIEW_UpdateSize(%struct.TYPE_4__* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %67, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i64 @CreateWindowW(i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @LISTVIEW_UpdateSize(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
