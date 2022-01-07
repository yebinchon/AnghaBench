; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_pipe-windows.c_os_process_pipe_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_pipe-windows.c_os_process_pipe_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32* }

@HANDLE_FLAG_INHERIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @os_process_pipe_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %132

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 114
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 119
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %132

31:                                               ; preds = %25, %20
  %32 = call i32 @create_pipe(i32** %12, i32** %9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %132

35:                                               ; preds = %31
  %36 = call i32 @create_pipe(i32** %10, i32** %11)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %132

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 114
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32*, i32** %12, align 8
  br label %51

49:                                               ; preds = %39
  %50 = load i32*, i32** %9, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32* [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %54 = call i32 @SetHandleInformation(i32* %52, i32 %53, i32 0)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %127

62:                                               ; preds = %51
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* @HANDLE_FLAG_INHERIT, align 4
  %65 = call i32 @SetHandleInformation(i32* %63, i32 %64, i32 0)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %127

73:                                               ; preds = %62
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %80

78:                                               ; preds = %73
  %79 = load i32*, i32** %12, align 8
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi i32* [ null, %77 ], [ %79, %78 ]
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32*, i32** %9, align 8
  br label %87

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32* [ %85, %84 ], [ null, %86 ]
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @create_process(i8* %74, i32* %81, i32* %88, i32* %89, i32** %8)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %127

94:                                               ; preds = %87
  %95 = call %struct.TYPE_4__* @bmalloc(i32 32)
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32*, i32** %12, align 8
  br label %102

100:                                              ; preds = %94
  %101 = load i32*, i32** %9, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32* [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %102
  %118 = load i32*, i32** %9, align 8
  br label %121

119:                                              ; preds = %102
  %120 = load i32*, i32** %12, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32* [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @CloseHandle(i32* %122)
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @CloseHandle(i32* %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %3, align 8
  br label %132

127:                                              ; preds = %93, %72, %61
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @CloseHandle(i32* %128)
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @CloseHandle(i32* %130)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %132

132:                                              ; preds = %127, %121, %38, %34, %30, %19
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %133
}

declare dso_local i32 @create_pipe(i32**, i32**) #1

declare dso_local i32 @SetHandleInformation(i32*, i32, i32) #1

declare dso_local i32 @create_process(i8*, i32*, i32*, i32*, i32**) #1

declare dso_local %struct.TYPE_4__* @bmalloc(i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
