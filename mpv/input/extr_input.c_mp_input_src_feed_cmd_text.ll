; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_src_feed_cmd_text.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_src_feed_cmd_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { i32, i32, %struct.mp_input_src_internal* }
%struct.mp_input_src_internal = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.mp_cmd = type { i32 }

@CMD_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Dropping overlong line.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_src_feed_cmd_text(%struct.mp_input_src* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mp_input_src*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mp_input_src_internal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.mp_cmd*, align 8
  store %struct.mp_input_src* %0, %struct.mp_input_src** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %16 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %15, i32 0, i32 2
  %17 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %16, align 8
  store %struct.mp_input_src_internal* %17, %struct.mp_input_src_internal** %7, align 8
  %18 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %19 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %24 = load i64, i64* @CMD_BUFFER, align 8
  %25 = call i64 @talloc_size(%struct.mp_input_src_internal* %23, i64 %24)
  %26 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %27 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %3
  br label %29

29:                                               ; preds = %155, %28
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %156

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i8* @memchr(i8* %33, i8 signext 10, i64 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  br label %50

46:                                               ; preds = %32
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i8* [ %45, %43 ], [ %49, %46 ]
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @CMD_BUFFER, align 8
  %59 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %60 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  %63 = icmp ugt i64 %57, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %50
  %68 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %69 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67, %50
  %73 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %74 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i1 [ true, %72 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %85 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %87 = call i32 @MP_WARN(%struct.mp_input_src* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %155

88:                                               ; preds = %67
  %89 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %90 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %93 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %91, %94
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @memcpy(i64 %95, i8* %96, i64 %97)
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %101 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %5, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %6, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %88
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %114 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %115 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %113, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %118 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %119 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %117, align 8
  %121 = bitcast %struct.TYPE_5__* %12 to { i64, i64 }*
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call { i64, i64 } @bstr_strip(i64 %123, i64 %125)
  %127 = bitcast %struct.TYPE_5__* %13 to { i64, i64 }*
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 0
  %129 = extractvalue { i64, i64 } %126, 0
  store i64 %129, i64* %128, align 8
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 1
  %131 = extractvalue { i64, i64 } %126, 1
  store i64 %131, i64* %130, align 8
  %132 = bitcast %struct.TYPE_5__* %12 to i8*
  %133 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 %133, i64 16, i1 false)
  %134 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %135 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = bitcast %struct.TYPE_5__* %12 to { i64, i64 }*
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call %struct.mp_cmd* @mp_input_parse_cmd_str(i32 %136, i64 %139, i64 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mp_cmd* %142, %struct.mp_cmd** %14, align 8
  %143 = load %struct.mp_cmd*, %struct.mp_cmd** %14, align 8
  %144 = icmp ne %struct.mp_cmd* %143, null
  br i1 %144, label %145, label %151

145:                                              ; preds = %112
  %146 = load %struct.mp_input_src*, %struct.mp_input_src** %4, align 8
  %147 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.mp_cmd*, %struct.mp_cmd** %14, align 8
  %150 = call i32 @mp_input_queue_cmd(i32 %148, %struct.mp_cmd* %149)
  br label %151

151:                                              ; preds = %145, %112
  %152 = load %struct.mp_input_src_internal*, %struct.mp_input_src_internal** %7, align 8
  %153 = getelementptr inbounds %struct.mp_input_src_internal, %struct.mp_input_src_internal* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %151, %88
  br label %155

155:                                              ; preds = %154, %81
  br label %29

156:                                              ; preds = %29
  ret void
}

declare dso_local i64 @talloc_size(%struct.mp_input_src_internal*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @MP_WARN(%struct.mp_input_src*, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local { i64, i64 } @bstr_strip(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.mp_cmd* @mp_input_parse_cmd_str(i32, i64, i64, i8*) #1

declare dso_local i32 @mp_input_queue_cmd(i32, %struct.mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
