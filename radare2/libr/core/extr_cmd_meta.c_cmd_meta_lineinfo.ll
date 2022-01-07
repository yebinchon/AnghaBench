; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_cmd_meta_lineinfo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_cmd_meta_lineinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Usage: CL[.-*?] [addr] [file:line]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"or: CL [addr] base64:[string]\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@filter_format = common dso_local global i8 0, align 1
@print_addrinfo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"base64:\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Invalid base64\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"TODO: Support global SdbAddrinfo or dummy rbinfile to handlee this case\0A\00", align 1
@filter_offset = common dso_local global i64 0, align 8
@filter_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @cmd_meta_lineinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_meta_lineinfo(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i64, i64* @UT64_MAX, align 8
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 63
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = call i32 @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @free(i8* %28)
  store i32 0, i32* %3, align 4
  br label %203

30:                                               ; preds = %2
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %10, align 8
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = call i8* @r_str_trim_ro(i8* %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 32)
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i64 @r_num_math(i32 %65, i8* %66)
  store i64 %67, i64* %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %68

68:                                               ; preds = %62, %54
  br label %79

69:                                               ; preds = %49
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 42
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  store i32 1, i32* %9, align 4
  store i8 42, i8* @filter_format, align 1
  br label %78

77:                                               ; preds = %69
  store i8 0, i8* @filter_format, align 1
  br label %78

78:                                               ; preds = %77, %74
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sdb_reset(i32 %92)
  br label %104

94:                                               ; preds = %82
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @print_addrinfo, align 4
  %103 = call i32 @sdb_foreach(i32 %101, i32 %102, i32* null)
  br label %104

104:                                              ; preds = %94, %85
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @free(i8* %105)
  store i32 0, i32* %3, align 4
  br label %203

107:                                              ; preds = %79
  %108 = load i8*, i8** %10, align 8
  %109 = call i8* @r_str_trim_ro(i8* %108)
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i8* @strdup(i8* %110)
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = call i8* @strchr(i8* %112, i8 signext 32)
  store i8* %113, i8** %15, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %173

116:                                              ; preds = %107
  %117 = load i8*, i8** %15, align 8
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %15, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %15, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @UT64_MAX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = call i64 @r_num_math(i32 %126, i8* %127)
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %123, %116
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @strncmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  %134 = load i8*, i8** %15, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 7
  %136 = call i32* @sdb_decode(i8* %135, i32* %16)
  store i32* %136, i32** %17, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %133
  %140 = call i32 @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %203

141:                                              ; preds = %133
  %142 = load i32*, i32** %17, align 8
  %143 = bitcast i32* %142 to i8*
  store i8* %143, i8** %12, align 8
  store i8* %143, i8** %15, align 8
  br label %144

144:                                              ; preds = %141, %129
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = call %struct.TYPE_11__* @r_bin_cur(%struct.TYPE_12__* %147)
  store %struct.TYPE_11__* %148, %struct.TYPE_11__** %18, align 8
  store i32 0, i32* %6, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %150 = icmp ne %struct.TYPE_11__* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i8*, i8** %15, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @cmd_meta_add_fileline(i64 %159, i8* %160, i64 %161)
  store i32 %162, i32* %6, align 4
  br label %165

163:                                              ; preds = %151, %144
  %164 = call i32 @eprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %156
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @free(i8* %170)
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %203

173:                                              ; preds = %107
  %174 = load i8*, i8** %14, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %180 = load i64, i64* %7, align 8
  %181 = call i32 @remove_meta_offset(%struct.TYPE_10__* %179, i64 %180)
  br label %200

182:                                              ; preds = %173
  %183 = load i64, i64* %7, align 8
  store i64 %183, i64* @filter_offset, align 8
  store i64 0, i64* @filter_count, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @print_addrinfo, align 4
  %192 = call i32 @sdb_foreach(i32 %190, i32 %191, i32* null)
  %193 = load i64, i64* @filter_count, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %182
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = load i64, i64* %7, align 8
  %198 = call i32 @print_meta_offset(%struct.TYPE_10__* %196, i64 %197)
  br label %199

199:                                              ; preds = %195, %182
  br label %200

200:                                              ; preds = %199, %178
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @free(i8* %201)
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %200, %165, %139, %104, %25
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @r_num_math(i32, i8*) #1

declare dso_local i32 @sdb_reset(i32) #1

declare dso_local i32 @sdb_foreach(i32, i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @sdb_decode(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @r_bin_cur(%struct.TYPE_12__*) #1

declare dso_local i32 @cmd_meta_add_fileline(i64, i8*, i64) #1

declare dso_local i32 @remove_meta_offset(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @print_meta_offset(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
