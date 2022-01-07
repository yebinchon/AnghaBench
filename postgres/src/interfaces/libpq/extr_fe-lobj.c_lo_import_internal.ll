; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_import_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_import_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@LO_BUFSIZE = common dso_local global i32 0, align 4
@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@INV_READ = common dso_local global i32 0, align 4
@INV_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not read from file \22%s\22: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8*, i64)* @lo_import_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lo_import_internal(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @LO_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = load i32, i32* @PG_BINARY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @open(i8* %25, i32 %28, i32 438)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @libpq_gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = trunc i64 %23 to i32
  %39 = call i32 @strerror_r(i32 %37, i8* %24, i32 %38)
  %40 = call i32 @printfPQExpBuffer(i32* %34, i32 %35, i8* %36, i32 %39)
  %41 = load i64, i64* @InvalidOid, align 8
  store i64 %41, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

42:                                               ; preds = %3
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @InvalidOid, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load i32, i32* @INV_READ, align 4
  %49 = load i32, i32* @INV_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @lo_creat(%struct.TYPE_8__* %47, i32 %50)
  store i64 %51, i64* %13, align 8
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @lo_create(%struct.TYPE_8__* %53, i64 %54)
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @InvalidOid, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i64, i64* @InvalidOid, align 8
  store i64 %63, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

64:                                               ; preds = %56
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @INV_WRITE, align 4
  %68 = call i32 @lo_open(%struct.TYPE_8__* %65, i64 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i64, i64* @InvalidOid, align 8
  store i64 %74, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @LO_BUFSIZE, align 4
  %79 = call i32 @read(i32 %77, i8* %21, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @lo_write(%struct.TYPE_8__* %82, i32 %83, i8* %21, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i64, i64* @InvalidOid, align 8
  store i64 %92, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

93:                                               ; preds = %81
  br label %76

94:                                               ; preds = %76
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32, i32* @errno, align 4
  store i32 %98, i32* %17, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @lo_close(%struct.TYPE_8__* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @libpq_gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %17, align 4
  %109 = trunc i64 %23 to i32
  %110 = call i32 @strerror_r(i32 %108, i8* %24, i32 %109)
  %111 = call i32 @printfPQExpBuffer(i32* %105, i32 %106, i8* %107, i32 %110)
  %112 = load i64, i64* @InvalidOid, align 8
  store i64 %112, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

113:                                              ; preds = %94
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i64 @lo_close(%struct.TYPE_8__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i64, i64* @InvalidOid, align 8
  store i64 %121, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

122:                                              ; preds = %113
  %123 = load i64, i64* %13, align 8
  store i64 %123, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %122, %120, %97, %89, %71, %60, %32
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i64, i64* %4, align 8
  ret i64 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, i8*, i32) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

declare dso_local i64 @lo_creat(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @lo_create(%struct.TYPE_8__*, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @lo_open(%struct.TYPE_8__*, i64, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @lo_write(%struct.TYPE_8__*, i32, i8*, i32) #2

declare dso_local i64 @lo_close(%struct.TYPE_8__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
