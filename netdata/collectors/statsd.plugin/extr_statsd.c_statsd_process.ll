; ModuleID = '/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_process.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/statsd.plugin/extr_statsd.c_statsd_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_STATSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RECEIVED: %zu bytes: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @statsd_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @statsd_process(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* @D_STATSD, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @debug(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23, i8* %24)
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %172, %38, %3
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %189

31:                                               ; preds = %27
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %9, align 8
  %33 = call i64 @statsd_parse_skip_up_to(i8* %32, i8 signext 58, i8 signext 124)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %14, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp eq i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @statsd_parse_skip_spaces(i8* %39)
  store i8* %40, i8** %8, align 8
  br label %27

41:                                               ; preds = %31
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8* %51, i8** %10, align 8
  %52 = call i64 @statsd_parse_skip_up_to(i8* %51, i8 signext 124, i8 signext 124)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %15, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %49, %41
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 124
  %59 = zext i1 %58 to i32
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  store i8* %64, i8** %11, align 8
  %65 = call i64 @statsd_parse_skip_up_to(i8* %64, i8 signext 124, i8 signext 64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %16, align 8
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %62, %54
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 124
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 64
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ true, %67 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  store i8* %84, i8** %12, align 8
  %85 = call i64 @statsd_parse_skip_up_to(i8* %84, i8 signext 124, i8 signext 35)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %17, align 8
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %12, align 8
  br label %94

94:                                               ; preds = %91, %82
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 124
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 35
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 @likely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  store i8* %112, i8** %13, align 8
  %113 = call i64 @statsd_parse_skip_up_to(i8* %112, i8 signext 124, i8 signext 124)
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %18, align 8
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 35
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %13, align 8
  br label %122

122:                                              ; preds = %119, %110
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %136, %123
  %125 = load i8*, i8** %8, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 10
  br label %134

134:                                              ; preds = %129, %124
  %135 = phi i1 [ false, %124 ], [ %133, %129 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %8, align 8
  br label %124

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 10
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = icmp ugt i8* %148, %149
  br label %151

151:                                              ; preds = %147, %142, %139
  %152 = phi i1 [ false, %142 ], [ false, %139 ], [ %150, %147 ]
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = load i64, i64* %6, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %6, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @memmove(i8* %164, i8* %165, i64 %166)
  %168 = load i64, i64* %6, align 8
  store i64 %168, i64* %4, align 8
  br label %190

169:                                              ; preds = %151
  %170 = load i8*, i8** %8, align 8
  %171 = call i8* @statsd_parse_skip_spaces(i8* %170)
  store i8* %171, i8** %8, align 8
  br label %172

172:                                              ; preds = %169
  %173 = load i8*, i8** %9, align 8
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @statsd_parse_field_trim(i8* %173, i8* %174)
  %176 = load i8*, i8** %10, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = call i32 @statsd_parse_field_trim(i8* %176, i8* %177)
  %179 = load i8*, i8** %11, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = call i32 @statsd_parse_field_trim(i8* %179, i8* %180)
  %182 = load i8*, i8** %12, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = call i32 @statsd_parse_field_trim(i8* %182, i8* %183)
  %185 = load i8*, i8** %13, align 8
  %186 = load i8*, i8** %18, align 8
  %187 = call i32 @statsd_parse_field_trim(i8* %185, i8* %186)
  %188 = call i32 @statsd_process_metric(i32 %175, i32 %178, i32 %181, i32 %184, i32 %187)
  br label %27

189:                                              ; preds = %27
  store i64 0, i64* %4, align 8
  br label %190

190:                                              ; preds = %189, %156
  %191 = load i64, i64* %4, align 8
  ret i64 %191
}

declare dso_local i32 @debug(i32, i8*, i64, i8*) #1

declare dso_local i64 @statsd_parse_skip_up_to(i8*, i8 signext, i8 signext) #1

declare dso_local i8* @statsd_parse_skip_spaces(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @statsd_process_metric(i32, i32, i32, i32, i32) #1

declare dso_local i32 @statsd_parse_field_trim(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
