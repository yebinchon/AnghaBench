; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_unbuffered_write.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_unbuffered_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, i64, i64, i8*, i32, i64, i32, i32 }

@zlog_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zlog_stream*, i8*, i64)* @zlog_stream_unbuffered_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zlog_stream_unbuffered_write(%struct.zlog_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %15 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %20 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %21 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %24 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @zlog_stream_prefix_ex(%struct.zlog_stream* %19, i32 %22, i32 %25)
  %27 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %28 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %18, %3
  %30 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %31 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %34 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %38 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @zlog_limit, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %131

47:                                               ; preds = %29
  %48 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %49 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @zlog_limit, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %58

57:                                               ; preds = %52
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i64 1, i64* %9, align 8
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i64, i64* @zlog_limit, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %59, %60
  %62 = sub i64 %61, 1
  store i64 %62, i64* %13, align 8
  %63 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %63, i8* %64, i64 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %58
  %70 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %71 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %76 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %79 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %84 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %85 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %88 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %83, i8* %86, i64 %89)
  br label %91

91:                                               ; preds = %82, %77
  %92 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %92, i8* %93, i64 %94)
  br label %96

96:                                               ; preds = %91, %58
  %97 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %98 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %13, align 8
  %105 = sub i64 %103, %104
  %106 = call i64 @zlog_stream_unbuffered_write(%struct.zlog_stream* %99, i8* %102, i64 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %110, %111
  store i64 %112, i64* %4, align 8
  br label %148

113:                                              ; preds = %96
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %4, align 8
  br label %148

115:                                              ; preds = %47
  %116 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %117 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %116, i32 0, i32 4
  store i32 1, i32* %117, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @zlog_limit, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i8* null, i8** %8, align 8
  br label %130

122:                                              ; preds = %115
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i64 3, i64* %9, align 8
  %123 = load i64, i64* @zlog_limit, align 8
  %124 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %125 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %123, %126
  %128 = load i64, i64* %9, align 8
  %129 = sub i64 %127, %128
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %122, %121
  br label %131

131:                                              ; preds = %130, %29
  %132 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i64 @zlog_stream_direct_write_ex(%struct.zlog_stream* %132, i8* %133, i64 %134, i8* %135, i64 %136)
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %143 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, %141
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %140, %131
  %147 = load i64, i64* %12, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %146, %113, %109
  %149 = load i64, i64* %4, align 8
  ret i64 %149
}

declare dso_local i64 @zlog_stream_prefix_ex(%struct.zlog_stream*, i32, i32) #1

declare dso_local i32 @zlog_stream_direct_write(%struct.zlog_stream*, i8*, i64) #1

declare dso_local i64 @zlog_stream_direct_write_ex(%struct.zlog_stream*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
