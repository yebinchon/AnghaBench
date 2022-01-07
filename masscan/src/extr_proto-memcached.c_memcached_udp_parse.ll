; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-memcached.c_memcached_udp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-memcached.c_memcached_udp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32*, i32 }
%struct.BannerOutput = type { i32 }
%struct.ProtocolState = type { i32 }

@Templ_UDP = common dso_local global i32 0, align 4
@PROTO_MEMCACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c" IP-MISMATCH\00", align 1
@AUTO_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcached_udp_parse(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PreprocessedInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [1 x %struct.BannerOutput], align 4
  %24 = alloca [1 x %struct.ProtocolState], align 4
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %26 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %16, align 4
  %28 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %29 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %198

34:                                               ; preds = %6
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %39, %43
  store i32 %44, i32* %18, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 8
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %49, %53
  store i32 %54, i32* %19, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 5
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %59, %63
  store i32 %64, i32* %20, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 6
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %69, %73
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp ugt i32 %75, 100
  br i1 %76, label %77, label %78

77:                                               ; preds = %34
  br label %190

78:                                               ; preds = %34
  %79 = load i32, i32* %20, align 4
  %80 = icmp ugt i32 %79, 100
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %190

82:                                               ; preds = %78
  %83 = load i32, i32* %21, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %190

86:                                               ; preds = %82
  %87 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %88 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 24
  %93 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %94 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %92, %98
  %100 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %101 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %99, %105
  %107 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %108 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 0
  %113 = or i32 %106, %112
  store i32 %113, i32* %14, align 4
  %114 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %115 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 24
  %120 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %121 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 16
  %126 = or i32 %119, %125
  %127 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %128 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 8
  %133 = or i32 %126, %132
  %134 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %135 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 0
  %140 = or i32 %133, %139
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @Templ_UDP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i64 @syn_cookie(i32 %141, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %22, align 4
  %150 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %23, i64 0, i64 0
  %151 = call i32 @banout_init(%struct.BannerOutput* %150)
  %152 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %24, i64 0, i64 0
  %153 = call i32 @memset(%struct.ProtocolState* %152, i32 0, i32 4)
  %154 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %24, i64 0, i64 0
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 8
  %157 = load i32, i32* %11, align 4
  %158 = sub i32 %157, 8
  %159 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %23, i64 0, i64 0
  %160 = call i32 @memcached_tcp_parse(i32 0, i32 0, %struct.ProtocolState* %154, i8* %156, i32 %158, %struct.BannerOutput* %159, i32 0)
  %161 = load i32, i32* %22, align 4
  %162 = and i32 %161, 65535
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %86
  %166 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %23, i64 0, i64 0
  %167 = load i32, i32* @PROTO_MEMCACHED, align 4
  %168 = load i32, i32* @AUTO_LEN, align 4
  %169 = call i32 @banout_append(%struct.BannerOutput* %166, i32 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %165, %86
  %171 = load %struct.Output*, %struct.Output** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %175 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @PROTO_MEMCACHED, align 4
  %178 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %179 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %23, i64 0, i64 0
  %182 = load i32, i32* @PROTO_MEMCACHED, align 4
  %183 = call i32 @banout_string(%struct.BannerOutput* %181, i32 %182)
  %184 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %23, i64 0, i64 0
  %185 = load i32, i32* @PROTO_MEMCACHED, align 4
  %186 = call i32 @banout_string_length(%struct.BannerOutput* %184, i32 %185)
  %187 = call i32 @output_report_banner(%struct.Output* %171, i32 %172, i32 %173, i32 17, i32 %176, i32 %177, i32 %180, i32 %183, i32 %186)
  %188 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %23, i64 0, i64 0
  %189 = call i32 @banout_release(%struct.BannerOutput* %188)
  store i32 0, i32* %7, align 4
  br label %198

190:                                              ; preds = %85, %81, %77
  %191 = load %struct.Output*, %struct.Output** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i8*, i8** %10, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @default_udp_parse(%struct.Output* %191, i32 %192, i8* %193, i32 %194, %struct.PreprocessedInfo* %195, i32 %196)
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %190, %170, %33
  %199 = load i32, i32* %7, align 4
  ret i32 %199
}

declare dso_local i64 @syn_cookie(i32, i32, i32, i32, i32) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @memset(%struct.ProtocolState*, i32, i32) #1

declare dso_local i32 @memcached_tcp_parse(i32, i32, %struct.ProtocolState*, i8*, i32, %struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i32) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

declare dso_local i32 @default_udp_parse(%struct.Output*, i32, i8*, i32, %struct.PreprocessedInfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
