; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_udp_readfile.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_udp_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PayloadsUDP = type { i32 }
%struct.RangeList = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s:%u: syntax error, expected \22udp\22.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s:%u: syntax error, expected ports\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s:%u: expected source port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @payloads_udp_readfile(i32* %0, i8* %1, %struct.PayloadsUDP* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.PayloadsUDP*, align 8
  %7 = alloca [16384 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [1 x %struct.RangeList], align 4
  %12 = alloca i32, align 4
  %13 = alloca [1500 x i8], align 16
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.PayloadsUDP* %2, %struct.PayloadsUDP** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %15, align 16
  br label %16

16:                                               ; preds = %134, %3
  store i32 0, i32* %9, align 4
  %17 = bitcast [1 x %struct.RangeList]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i32 65536, i32* %12, align 4
  %18 = bitcast [1500 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 1500, i1 false)
  store i64 0, i64* %14, align 8
  %19 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %11, i64 0, i64 0
  %20 = call i32 @memset(%struct.RangeList* %19, i32 0, i32 4)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %23 = call i32 @get_next_line(i32* %21, i32* %8, i8* %22, i32 16384)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %137

26:                                               ; preds = %16
  %27 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %28 = call i64 @memcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33)
  br label %138

35:                                               ; preds = %26
  %36 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %40 = call i64 @strlen(i8* %39)
  %41 = call i32 @memmove(i8* %36, i8* %38, i64 %40)
  br label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %44 = call i32 @trim(i8* %43, i32 16384)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %47 = call i32 @get_next_line(i32* %45, i32* %8, i8* %46, i32 16384)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %137

50:                                               ; preds = %42
  %51 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %11, i64 0, i64 0
  %52 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %53 = call i8* @rangelist_parse_ports(%struct.RangeList* %51, i8* %52, i32* %9, i32 0)
  store i8* %53, i8** %10, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %59)
  br label %138

61:                                               ; preds = %50
  %62 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add nsw i64 %65, 1
  %67 = call i32 @memmove(i8* %62, i8* %63, i64 %66)
  %68 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %69 = call i32 @trim(i8* %68, i32 16384)
  br label %70

70:                                               ; preds = %84, %61
  %71 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %72 = call i32 @trim(i8* %71, i32 16384)
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %75 = call i32 @get_next_line(i32* %73, i32* %8, i8* %74, i32 16384)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %96

78:                                               ; preds = %70
  %79 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %80 = load i8, i8* %79, align 16
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 34
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %96

84:                                               ; preds = %78
  %85 = getelementptr inbounds [1500 x i8], [1500 x i8]* %13, i64 0, i64 0
  %86 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %87 = call i8* @parse_c_string(i8* %85, i64* %14, i32 1500, i8* %86)
  store i8* %87, i8** %10, align 8
  %88 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = add nsw i64 %91, 1
  %93 = call i32 @memmove(i8* %88, i8* %89, i64 %92)
  %94 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %95 = call i32 @trim(i8* %94, i32 16384)
  br label %70

96:                                               ; preds = %83, %77
  %97 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %98 = call i64 @memcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %102 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %103 = getelementptr inbounds i8, i8* %102, i64 6
  %104 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = call i64 @strlen(i8* %105)
  %107 = call i32 @memmove(i8* %101, i8* %103, i64 %106)
  %108 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %109 = call i32 @trim(i8* %108, i32 16384)
  %110 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %111 = load i8, i8* %110, align 16
  %112 = call i32 @isdigit(i8 signext %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %100
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %116, i32 %117)
  br label %138

119:                                              ; preds = %100
  %120 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  %121 = call i64 @strtoul(i8* %120, i32 0, i32 0)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  %123 = getelementptr inbounds [16384 x i8], [16384 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %123, align 16
  br label %124

124:                                              ; preds = %119, %96
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %6, align 8
  %129 = getelementptr inbounds [1500 x i8], [1500 x i8]* %13, i64 0, i64 0
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %11, i64 0, i64 0
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @payloads_datagram_add(%struct.PayloadsUDP* %128, i8* %129, i64 %130, %struct.RangeList* %131, i32 %132, i32 0)
  br label %134

134:                                              ; preds = %127, %124
  %135 = getelementptr inbounds [1 x %struct.RangeList], [1 x %struct.RangeList]* %11, i64 0, i64 0
  %136 = call i32 @rangelist_remove_all(%struct.RangeList* %135)
  br label %16

137:                                              ; preds = %49, %25
  br label %138

138:                                              ; preds = %137, %114, %56, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.RangeList*, i32, i32) #2

declare dso_local i32 @get_next_line(i32*, i32*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @trim(i8*, i32) #2

declare dso_local i8* @rangelist_parse_ports(%struct.RangeList*, i8*, i32*, i32) #2

declare dso_local i8* @parse_c_string(i8*, i64*, i32, i8*) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i64 @strtoul(i8*, i32, i32) #2

declare dso_local i32 @payloads_datagram_add(%struct.PayloadsUDP*, i8*, i64, %struct.RangeList*, i32, i32) #2

declare dso_local i32 @rangelist_remove_all(%struct.RangeList*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
