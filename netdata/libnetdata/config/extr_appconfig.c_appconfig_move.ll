; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_move.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_option = type { i32, %struct.config_option*, i32 }
%struct.section = type { i8*, %struct.config_option* }

@D_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"request to rename config in section '%s', old name '%s', to section '%s', new name '%s'\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"INTERNAL ERROR: deletion of config '%s' from section '%s', deleted tge wrong config entry.\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"INTERNAL ERROR: cannot find variable '%s' in section '%s' of the config - but it should be there.\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"INTERNAL ERROR: re-indexing of config '%s' in section '%s', already exists.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @appconfig_move(%struct.config* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.config_option*, align 8
  %13 = alloca %struct.config_option*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.section*, align 8
  %16 = alloca %struct.section*, align 8
  %17 = alloca %struct.config_option*, align 8
  store %struct.config* %0, %struct.config** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 -1, i32* %14, align 4
  %18 = load i32, i32* @D_CONFIG, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @debug(i32 %18, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i8* %21, i8* %22)
  %24 = load %struct.config*, %struct.config** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call %struct.section* @appconfig_section_find(%struct.config* %24, i8* %25)
  store %struct.section* %26, %struct.section** %15, align 8
  %27 = load %struct.section*, %struct.section** %15, align 8
  %28 = icmp ne %struct.section* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %189

31:                                               ; preds = %5
  %32 = load %struct.config*, %struct.config** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call %struct.section* @appconfig_section_find(%struct.config* %32, i8* %33)
  store %struct.section* %34, %struct.section** %16, align 8
  %35 = load %struct.section*, %struct.section** %16, align 8
  %36 = icmp ne %struct.section* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.config*, %struct.config** %7, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call %struct.section* @appconfig_section_create(%struct.config* %38, i8* %39)
  store %struct.section* %40, %struct.section** %16, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.section*, %struct.section** %15, align 8
  %43 = call i32 @config_section_wrlock(%struct.section* %42)
  %44 = load %struct.section*, %struct.section** %15, align 8
  %45 = load %struct.section*, %struct.section** %16, align 8
  %46 = icmp ne %struct.section* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.section*, %struct.section** %16, align 8
  %49 = call i32 @config_section_wrlock(%struct.section* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.section*, %struct.section** %15, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call %struct.config_option* @appconfig_option_index_find(%struct.section* %51, i8* %52, i32 0)
  store %struct.config_option* %53, %struct.config_option** %12, align 8
  %54 = load %struct.config_option*, %struct.config_option** %12, align 8
  %55 = icmp ne %struct.config_option* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %178

57:                                               ; preds = %50
  %58 = load %struct.section*, %struct.section** %16, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call %struct.config_option* @appconfig_option_index_find(%struct.section* %58, i8* %59, i32 0)
  store %struct.config_option* %60, %struct.config_option** %13, align 8
  %61 = load %struct.config_option*, %struct.config_option** %13, align 8
  %62 = icmp ne %struct.config_option* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %178

64:                                               ; preds = %57
  %65 = load %struct.section*, %struct.section** %15, align 8
  %66 = load %struct.config_option*, %struct.config_option** %12, align 8
  %67 = call %struct.config_option* @appconfig_option_index_del(%struct.section* %65, %struct.config_option* %66)
  %68 = load %struct.config_option*, %struct.config_option** %12, align 8
  %69 = icmp ne %struct.config_option* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.config_option*, %struct.config_option** %12, align 8
  %75 = getelementptr inbounds %struct.config_option, %struct.config_option* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.section*, %struct.section** %15, align 8
  %78 = getelementptr inbounds %struct.section, %struct.section* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %76, i8* %79)
  br label %81

81:                                               ; preds = %73, %64
  %82 = load %struct.section*, %struct.section** %15, align 8
  %83 = getelementptr inbounds %struct.section, %struct.section* %82, i32 0, i32 1
  %84 = load %struct.config_option*, %struct.config_option** %83, align 8
  %85 = load %struct.config_option*, %struct.config_option** %12, align 8
  %86 = icmp eq %struct.config_option* %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.config_option*, %struct.config_option** %12, align 8
  %89 = getelementptr inbounds %struct.config_option, %struct.config_option* %88, i32 0, i32 1
  %90 = load %struct.config_option*, %struct.config_option** %89, align 8
  %91 = load %struct.section*, %struct.section** %15, align 8
  %92 = getelementptr inbounds %struct.section, %struct.section* %91, i32 0, i32 1
  store %struct.config_option* %90, %struct.config_option** %92, align 8
  br label %137

93:                                               ; preds = %81
  %94 = load %struct.section*, %struct.section** %15, align 8
  %95 = getelementptr inbounds %struct.section, %struct.section* %94, i32 0, i32 1
  %96 = load %struct.config_option*, %struct.config_option** %95, align 8
  store %struct.config_option* %96, %struct.config_option** %17, align 8
  br label %97

97:                                               ; preds = %109, %93
  %98 = load %struct.config_option*, %struct.config_option** %17, align 8
  %99 = icmp ne %struct.config_option* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.config_option*, %struct.config_option** %17, align 8
  %102 = getelementptr inbounds %struct.config_option, %struct.config_option* %101, i32 0, i32 1
  %103 = load %struct.config_option*, %struct.config_option** %102, align 8
  %104 = load %struct.config_option*, %struct.config_option** %12, align 8
  %105 = icmp ne %struct.config_option* %103, %104
  br label %106

106:                                              ; preds = %100, %97
  %107 = phi i1 [ false, %97 ], [ %105, %100 ]
  br i1 %107, label %108, label %113

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.config_option*, %struct.config_option** %17, align 8
  %111 = getelementptr inbounds %struct.config_option, %struct.config_option* %110, i32 0, i32 1
  %112 = load %struct.config_option*, %struct.config_option** %111, align 8
  store %struct.config_option* %112, %struct.config_option** %17, align 8
  br label %97

113:                                              ; preds = %106
  %114 = load %struct.config_option*, %struct.config_option** %17, align 8
  %115 = icmp ne %struct.config_option* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.config_option*, %struct.config_option** %17, align 8
  %118 = getelementptr inbounds %struct.config_option, %struct.config_option* %117, i32 0, i32 1
  %119 = load %struct.config_option*, %struct.config_option** %118, align 8
  %120 = load %struct.config_option*, %struct.config_option** %12, align 8
  %121 = icmp ne %struct.config_option* %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116, %113
  %123 = load %struct.config_option*, %struct.config_option** %12, align 8
  %124 = getelementptr inbounds %struct.config_option, %struct.config_option* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.section*, %struct.section** %15, align 8
  %127 = getelementptr inbounds %struct.section, %struct.section* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @error(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i32 %125, i8* %128)
  br label %136

130:                                              ; preds = %116
  %131 = load %struct.config_option*, %struct.config_option** %12, align 8
  %132 = getelementptr inbounds %struct.config_option, %struct.config_option* %131, i32 0, i32 1
  %133 = load %struct.config_option*, %struct.config_option** %132, align 8
  %134 = load %struct.config_option*, %struct.config_option** %17, align 8
  %135 = getelementptr inbounds %struct.config_option, %struct.config_option* %134, i32 0, i32 1
  store %struct.config_option* %133, %struct.config_option** %135, align 8
  br label %136

136:                                              ; preds = %130, %122
  br label %137

137:                                              ; preds = %136, %87
  %138 = load %struct.config_option*, %struct.config_option** %12, align 8
  %139 = getelementptr inbounds %struct.config_option, %struct.config_option* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @freez(i32 %140)
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @strdupz(i8* %142)
  %144 = load %struct.config_option*, %struct.config_option** %12, align 8
  %145 = getelementptr inbounds %struct.config_option, %struct.config_option* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.config_option*, %struct.config_option** %12, align 8
  %147 = getelementptr inbounds %struct.config_option, %struct.config_option* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @simple_hash(i32 %148)
  %150 = load %struct.config_option*, %struct.config_option** %12, align 8
  %151 = getelementptr inbounds %struct.config_option, %struct.config_option* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.config_option*, %struct.config_option** %12, align 8
  store %struct.config_option* %152, %struct.config_option** %13, align 8
  %153 = load %struct.section*, %struct.section** %16, align 8
  %154 = getelementptr inbounds %struct.section, %struct.section* %153, i32 0, i32 1
  %155 = load %struct.config_option*, %struct.config_option** %154, align 8
  %156 = load %struct.config_option*, %struct.config_option** %13, align 8
  %157 = getelementptr inbounds %struct.config_option, %struct.config_option* %156, i32 0, i32 1
  store %struct.config_option* %155, %struct.config_option** %157, align 8
  %158 = load %struct.config_option*, %struct.config_option** %13, align 8
  %159 = load %struct.section*, %struct.section** %16, align 8
  %160 = getelementptr inbounds %struct.section, %struct.section* %159, i32 0, i32 1
  store %struct.config_option* %158, %struct.config_option** %160, align 8
  %161 = load %struct.section*, %struct.section** %16, align 8
  %162 = load %struct.config_option*, %struct.config_option** %12, align 8
  %163 = call %struct.config_option* @appconfig_option_index_add(%struct.section* %161, %struct.config_option* %162)
  %164 = load %struct.config_option*, %struct.config_option** %12, align 8
  %165 = icmp ne %struct.config_option* %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %137
  %170 = load %struct.config_option*, %struct.config_option** %12, align 8
  %171 = getelementptr inbounds %struct.config_option, %struct.config_option* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.section*, %struct.section** %16, align 8
  %174 = getelementptr inbounds %struct.section, %struct.section* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %172, i8* %175)
  br label %177

177:                                              ; preds = %169, %137
  store i32 0, i32* %14, align 4
  br label %178

178:                                              ; preds = %177, %63, %56
  %179 = load %struct.section*, %struct.section** %15, align 8
  %180 = load %struct.section*, %struct.section** %16, align 8
  %181 = icmp ne %struct.section* %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load %struct.section*, %struct.section** %16, align 8
  %184 = call i32 @config_section_unlock(%struct.section* %183)
  br label %185

185:                                              ; preds = %182, %178
  %186 = load %struct.section*, %struct.section** %15, align 8
  %187 = call i32 @config_section_unlock(%struct.section* %186)
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %185, %29
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.section* @appconfig_section_find(%struct.config*, i8*) #1

declare dso_local %struct.section* @appconfig_section_create(%struct.config*, i8*) #1

declare dso_local i32 @config_section_wrlock(%struct.section*) #1

declare dso_local %struct.config_option* @appconfig_option_index_find(%struct.section*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.config_option* @appconfig_option_index_del(%struct.section*, %struct.config_option*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @freez(i32) #1

declare dso_local i32 @strdupz(i8*) #1

declare dso_local i32 @simple_hash(i32) #1

declare dso_local %struct.config_option* @appconfig_option_index_add(%struct.section*, %struct.config_option*) #1

declare dso_local i32 @config_section_unlock(%struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
