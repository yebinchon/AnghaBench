; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_get_conn_text.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_get_conn_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_un = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"<AF %d>\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s:%s:%u\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*, %struct.sockaddr*)* @get_conn_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_conn_text(%struct.TYPE_3__* %0, i32 %1, i8* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %8, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 16
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i16 0, i16* %12, align 2
  store i64 0, i64* %13, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %85 [
    i32 130, label %20
    i32 129, label %40
    i32 128, label %67
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 1
  %25 = sub i64 %15, 1
  %26 = trunc i64 %25 to i32
  %27 = call i32 @inet_ntop(i32 %21, i32* %24, i8* %17, i32 %26)
  %28 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_in*
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call zeroext i16 @ntohs(i32 %31)
  store i16 %32, i16* %12, align 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IS_UDP(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  store i8* %39, i8** %11, align 8
  br label %85

40:                                               ; preds = %4
  %41 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 91, i8* %41, align 16
  %42 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %45 = bitcast %struct.sockaddr* %44 to %struct.sockaddr_in6*
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = getelementptr inbounds i8, i8* %17, i64 1
  %48 = sub i64 %15, 2
  %49 = trunc i64 %48 to i32
  %50 = call i32 @inet_ntop(i32 %43, i32* %46, i8* %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %40
  %55 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %56 = bitcast %struct.sockaddr* %55 to %struct.sockaddr_in6*
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call zeroext i16 @ntohs(i32 %58)
  store i16 %59, i16* %12, align 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IS_UDP(i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  store i8* %66, i8** %11, align 8
  br label %85

67:                                               ; preds = %4
  store i64 4, i64* %13, align 8
  %68 = load i32, i32* @MAXPATHLEN, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %13, align 8
  %71 = icmp ule i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @MAXPATHLEN, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_un*
  %79 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @strncpy(i8* %17, i32 %80, i64 %81)
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds i8, i8* %17, i64 %83
  store i8 0, i8* %84, align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %85

85:                                               ; preds = %4, %76, %54, %20
  %86 = call i32 @strlen(i8* %17)
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i16, i16* %12, align 2
  %93 = icmp ne i16 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i16, i16* %12, align 2
  %98 = zext i16 %97 to i32
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %96, i8* %17, i32 %98)
  br label %104

100:                                              ; preds = %91
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %102, i8* %17)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local zeroext i16 @ntohs(i32) #2

declare dso_local i32 @IS_UDP(i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i32, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
