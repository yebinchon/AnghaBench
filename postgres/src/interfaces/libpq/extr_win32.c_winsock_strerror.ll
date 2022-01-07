; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_win32.c_winsock_strerror.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_win32.c_winsock_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64 }

@DLLS_SIZE = common dso_local global i32 0, align 4
@dlls = common dso_local global %struct.TYPE_2__* null, align 8
@LOAD_LIBRARY_AS_DATAFILE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i64 0, align 8
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unrecognized socket error: 0x%08X/%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" (0x%08X/%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @winsock_strerror(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @LookupWSErrorMessage(i32 %11, i8* %12)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %102, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @DLLS_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %105

23:                                               ; preds = %21
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @LOAD_LIBRARY_AS_DATAFILE, align 4
  %44 = call i64 @LoadLibraryEx(i64 %42, i32 0, i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %31, %23
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %102

68:                                               ; preds = %59, %51
  %69 = load i64, i64* @FORMAT_MESSAGE_FROM_SYSTEM, align 8
  %70 = load i64, i64* @FORMAT_MESSAGE_IGNORE_INSERTS, align 8
  %71 = or i64 %69, %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i64, i64* @FORMAT_MESSAGE_FROM_HMODULE, align 8
  br label %82

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i64 [ %80, %79 ], [ 0, %81 ]
  %84 = or i64 %71, %83
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlls, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @LANG_ENGLISH, align 4
  %94 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %95 = call i32 @MAKELANGID(i32 %93, i32 %94)
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 %97, 64
  %99 = call i64 @FormatMessage(i64 %85, i8* %91, i32 %92, i32 %95, i8* %96, i64 %98, i32 0)
  %100 = icmp ne i64 0, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %82, %67
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %14

105:                                              ; preds = %21
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @libpq_gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @sprintf(i8* %109, i8* %110, i32 %111, i32 %112)
  br label %138

114:                                              ; preds = %105
  %115 = load i8*, i8** %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = sub i64 %116, 1
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @strlen(i8* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i64, i64* %6, align 8
  %123 = trunc i64 %122 to i32
  %124 = sub nsw i32 %123, 64
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = load i64, i64* %6, align 8
  %128 = sub i64 %127, 64
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %114
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @sprintf(i8* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %130, %108
  %139 = load i8*, i8** %5, align 8
  ret i8* %139
}

declare dso_local i32 @LookupWSErrorMessage(i32, i8*) #1

declare dso_local i64 @LoadLibraryEx(i64, i32, i32) #1

declare dso_local i64 @FormatMessage(i64, i8*, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
