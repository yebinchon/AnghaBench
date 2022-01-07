; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_parse_listener_prefix.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_parse_listener_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_line = type { i32, i32, i32 }
%struct.lwan = type { i32 }
%struct.lwan_module = type { i32, i8*, %struct.hash* (i8*, %struct.hash*)*, i32 (%struct.hash*, %struct.config.0*)* }
%struct.hash = type { i32 }
%struct.config.0 = type opaque
%struct.lwan_url_map = type { i32, %struct.lwan_module*, i8*, %struct.hash* }

@free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not isolate configuration file\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"authorization\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not skip section\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Expecting section end while parsing prefix\00", align 1
@HANDLER_PARSE_MASK = common dso_local global i32 0, align 4
@HANDLER_DATA_IS_HASH_TABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not create module instance\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Error from module: %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"Module isn't prepared to load settings from a file; create_from_hash() method isn't present\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Module does not have handle_request() method\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config*, %struct.config_line*, %struct.lwan*, %struct.lwan_module*, i8*)* @parse_listener_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_listener_prefix(%struct.config* %0, %struct.config_line* %1, %struct.lwan* %2, %struct.lwan_module* %3, i8* %4) #0 {
  %6 = alloca %struct.config*, align 8
  %7 = alloca %struct.config_line*, align 8
  %8 = alloca %struct.lwan*, align 8
  %9 = alloca %struct.lwan_module*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lwan_url_map, align 8
  %12 = alloca %struct.hash*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.config*, align 8
  %15 = alloca i8*, align 8
  store %struct.config* %0, %struct.config** %6, align 8
  store %struct.config_line* %1, %struct.config_line** %7, align 8
  store %struct.lwan* %2, %struct.lwan** %8, align 8
  store %struct.lwan_module* %3, %struct.lwan_module** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = bitcast %struct.lwan_url_map* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* @free, align 4
  %18 = load i32, i32* @free, align 4
  %19 = call %struct.hash* @hash_str_new(i32 %17, i32 %18)
  store %struct.hash* %19, %struct.hash** %12, align 8
  %20 = load %struct.config_line*, %struct.config_line** %7, align 8
  %21 = getelementptr inbounds %struct.config_line, %struct.config_line* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @strdupa(i32 %22)
  store i8* %23, i8** %13, align 8
  %24 = load %struct.config*, %struct.config** %6, align 8
  %25 = load %struct.config_line*, %struct.config_line** %7, align 8
  %26 = call %struct.config* @config_isolate_section(%struct.config* %24, %struct.config_line* %25)
  store %struct.config* %26, %struct.config** %14, align 8
  %27 = load %struct.config*, %struct.config** %14, align 8
  %28 = icmp ne %struct.config* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load %struct.config*, %struct.config** %6, align 8
  %31 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %205

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %73, %32
  %34 = load %struct.config*, %struct.config** %6, align 8
  %35 = call %struct.config_line* @config_read_line(%struct.config* %34)
  store %struct.config_line* %35, %struct.config_line** %7, align 8
  %36 = icmp ne %struct.config_line* %35, null
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = load %struct.config_line*, %struct.config_line** %7, align 8
  %39 = getelementptr inbounds %struct.config_line, %struct.config_line* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %73 [
    i32 130, label %41
    i32 129, label %52
    i32 128, label %72
  ]

41:                                               ; preds = %37
  %42 = load %struct.hash*, %struct.hash** %12, align 8
  %43 = load %struct.config_line*, %struct.config_line** %7, align 8
  %44 = getelementptr inbounds %struct.config_line, %struct.config_line* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strdup(i32 %45)
  %47 = load %struct.config_line*, %struct.config_line** %7, align 8
  %48 = getelementptr inbounds %struct.config_line, %struct.config_line* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strdup(i32 %49)
  %51 = call i32 @hash_add(%struct.hash* %42, i32 %46, i32 %50)
  br label %73

52:                                               ; preds = %37
  %53 = load %struct.config_line*, %struct.config_line** %7, align 8
  %54 = getelementptr inbounds %struct.config_line, %struct.config_line* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @streq(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.config*, %struct.config** %6, align 8
  %60 = load %struct.config_line*, %struct.config_line** %7, align 8
  %61 = call i32 @parse_listener_prefix_authorization(%struct.config* %59, %struct.config_line* %60, %struct.lwan_url_map* %11)
  br label %71

62:                                               ; preds = %52
  %63 = load %struct.config*, %struct.config** %6, align 8
  %64 = load %struct.config_line*, %struct.config_line** %7, align 8
  %65 = call i32 @config_skip_section(%struct.config* %63, %struct.config_line* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.config*, %struct.config** %6, align 8
  %69 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %205

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %58
  br label %73

72:                                               ; preds = %37
  br label %77

73:                                               ; preds = %37, %71, %41
  br label %33

74:                                               ; preds = %33
  %75 = load %struct.config*, %struct.config** %6, align 8
  %76 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %205

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %82 = icmp ne %struct.lwan_module* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %88 = icmp ne %struct.lwan_module* %87, null
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  br label %91

91:                                               ; preds = %89, %80
  %92 = phi i1 [ true, %80 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* @HANDLER_PARSE_MASK, align 4
  %101 = load i32, i32* @HANDLER_DATA_IS_HASH_TABLE, align 4
  %102 = or i32 %100, %101
  %103 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 8
  %106 = load %struct.hash*, %struct.hash** %12, align 8
  %107 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 3
  store %struct.hash* %106, %struct.hash** %107, align 8
  %108 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 1
  store %struct.lwan_module* null, %struct.lwan_module** %108, align 8
  store %struct.hash* null, %struct.hash** %12, align 8
  br label %200

109:                                              ; preds = %91
  %110 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %111 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %110, i32 0, i32 2
  %112 = load %struct.hash* (i8*, %struct.hash*)*, %struct.hash* (i8*, %struct.hash*)** %111, align 8
  %113 = icmp ne %struct.hash* (i8*, %struct.hash*)* %112, null
  br i1 %113, label %114, label %173

114:                                              ; preds = %109
  %115 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %116 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %173

119:                                              ; preds = %114
  %120 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %121 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %120, i32 0, i32 2
  %122 = load %struct.hash* (i8*, %struct.hash*)*, %struct.hash* (i8*, %struct.hash*)** %121, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.hash*, %struct.hash** %12, align 8
  %125 = call %struct.hash* %122(i8* %123, %struct.hash* %124)
  %126 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 3
  store %struct.hash* %125, %struct.hash** %126, align 8
  %127 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 3
  %128 = load %struct.hash*, %struct.hash** %127, align 8
  %129 = icmp ne %struct.hash* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %119
  %131 = load %struct.config*, %struct.config** %6, align 8
  %132 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %205

133:                                              ; preds = %119
  %134 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %135 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %134, i32 0, i32 3
  %136 = load i32 (%struct.hash*, %struct.config.0*)*, i32 (%struct.hash*, %struct.config.0*)** %135, align 8
  %137 = icmp ne i32 (%struct.hash*, %struct.config.0*)* %136, null
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %140 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %139, i32 0, i32 3
  %141 = load i32 (%struct.hash*, %struct.config.0*)*, i32 (%struct.hash*, %struct.config.0*)** %140, align 8
  %142 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 3
  %143 = load %struct.hash*, %struct.hash** %142, align 8
  %144 = load %struct.config*, %struct.config** %14, align 8
  %145 = bitcast %struct.config* %144 to %struct.config.0*
  %146 = call i32 %141(%struct.hash* %143, %struct.config.0* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %138
  %149 = load %struct.config*, %struct.config** %14, align 8
  %150 = call i8* @config_last_error(%struct.config* %149)
  store i8* %150, i8** %15, align 8
  %151 = load %struct.config*, %struct.config** %6, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i8*, i8** %15, align 8
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i8* [ %155, %154 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %156 ]
  %159 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %158)
  br label %205

160:                                              ; preds = %138, %133
  %161 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %162 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 2
  store i8* %163, i8** %164, align 8
  %165 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %166 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 8
  %171 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %172 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %11, i32 0, i32 1
  store %struct.lwan_module* %171, %struct.lwan_module** %172, align 8
  br label %199

173:                                              ; preds = %114, %109
  %174 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %175 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %174, i32 0, i32 2
  %176 = load %struct.hash* (i8*, %struct.hash*)*, %struct.hash* (i8*, %struct.hash*)** %175, align 8
  %177 = icmp ne %struct.hash* (i8*, %struct.hash*)* %176, null
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i64 @UNLIKELY(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load %struct.config*, %struct.config** %6, align 8
  %184 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %183, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0))
  br label %205

185:                                              ; preds = %173
  %186 = load %struct.lwan_module*, %struct.lwan_module** %9, align 8
  %187 = getelementptr inbounds %struct.lwan_module, %struct.lwan_module* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i64 @UNLIKELY(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load %struct.config*, %struct.config** %6, align 8
  %196 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %195, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %205

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %160
  br label %200

200:                                              ; preds = %199, %97
  %201 = load %struct.lwan*, %struct.lwan** %8, align 8
  %202 = getelementptr inbounds %struct.lwan, %struct.lwan* %201, i32 0, i32 0
  %203 = load i8*, i8** %13, align 8
  %204 = call i32 @add_url_map(i32* %202, i8* %203, %struct.lwan_url_map* %11)
  br label %205

205:                                              ; preds = %200, %194, %182, %157, %130, %74, %67, %29
  %206 = load %struct.hash*, %struct.hash** %12, align 8
  %207 = call i32 @hash_free(%struct.hash* %206)
  %208 = load %struct.config*, %struct.config** %14, align 8
  %209 = call i32 @config_close(%struct.config* %208)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.hash* @hash_str_new(i32, i32) #2

declare dso_local i8* @strdupa(i32) #2

declare dso_local %struct.config* @config_isolate_section(%struct.config*, %struct.config_line*) #2

declare dso_local i32 @config_error(%struct.config*, i8*, ...) #2

declare dso_local %struct.config_line* @config_read_line(%struct.config*) #2

declare dso_local i32 @hash_add(%struct.hash*, i32, i32) #2

declare dso_local i32 @strdup(i32) #2

declare dso_local i32 @streq(i32, i8*) #2

declare dso_local i32 @parse_listener_prefix_authorization(%struct.config*, %struct.config_line*, %struct.lwan_url_map*) #2

declare dso_local i32 @config_skip_section(%struct.config*, %struct.config_line*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @config_last_error(%struct.config*) #2

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @add_url_map(i32*, i8*, %struct.lwan_url_map*) #2

declare dso_local i32 @hash_free(%struct.hash*) #2

declare dso_local i32 @config_close(%struct.config*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
