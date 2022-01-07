; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_export.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@LO_BUFSIZE = common dso_local global i32 0, align 4
@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@INV_READ = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not open file \22%s\22: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"could not write to file \22%s\22: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lo_export(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %8, align 4
  %19 = load i32, i32* @LO_BUFSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @INV_READ, align 4
  %29 = call i32 @lo_open(%struct.TYPE_6__* %26, i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %115

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @O_CREAT, align 4
  %36 = load i32, i32* @O_WRONLY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @O_TRUNC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PG_BINARY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @open(i8* %34, i32 %41, i32 438)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %33
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %17, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @lo_close(%struct.TYPE_6__* %47, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @libpq_gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %17, align 4
  %55 = trunc i64 %24 to i32
  %56 = call i32 @strerror_r(i32 %54, i8* %25, i32 %55)
  %57 = call i32 @printfPQExpBuffer(i32* %51, i32 %52, i8* %53, i32 %56)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %115

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %87, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @LO_BUFSIZE, align 4
  %63 = call i32 @lo_read(%struct.TYPE_6__* %60, i32 %61, i8* %22, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @write(i32 %66, i8* %22, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %18, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @lo_close(%struct.TYPE_6__* %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @close(i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @libpq_gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %18, align 4
  %84 = trunc i64 %24 to i32
  %85 = call i32 @strerror_r(i32 %83, i8* %25, i32 %84)
  %86 = call i32 @printfPQExpBuffer(i32* %80, i32 %81, i8* %82, i32 %85)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %115

87:                                               ; preds = %65
  br label %59

88:                                               ; preds = %59
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @lo_close(%struct.TYPE_6__* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %88
  store i32 -1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @close(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = call i32 @libpq_gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* @errno, align 4
  %110 = trunc i64 %24 to i32
  %111 = call i32 @strerror_r(i32 %109, i8* %25, i32 %110)
  %112 = call i32 @printfPQExpBuffer(i32* %106, i32 %107, i8* %108, i32 %111)
  store i32 -1, i32* %8, align 4
  br label %113

113:                                              ; preds = %104, %101, %97
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %115

115:                                              ; preds = %113, %72, %45, %32
  %116 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lo_open(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @lo_close(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i32, i8*, i32) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

declare dso_local i32 @lo_read(%struct.TYPE_6__*, i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i64 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
